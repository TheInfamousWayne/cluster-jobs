import sys, os
import time
import re
import argparse
import pickle

#python scripts/create_job.py --script /home/vagrawal/scripts/run.sh --dir /home/vagrawal/workspace/gh-projects/hybrid/ --gpu 1 --mem 40 --cpu 4 --faster --use-template --array --pull --gpu-names V100-32 V100-16 --bid 500

# conda install -c eumetsat expect

sub_fmt = '''executable = /bin/sh
args = {exec}
getenv = True
error = {err}
output = {out}
log = {log}
queue {procs}'''

# request_memory = 4096
# request_cpus = 4
# request_gpus = 1

GPU_NAMES = {
	'2080': 'GeForce RTX 2080 Ti',
	'2080ti': 'GeForce RTX 2080 Ti',
	'2080Ti': 'GeForce RTX 2080 Ti',

	'K80': 'Tesla K80',

	'K20': 'Tesla K20Xm',

	'V100-16': 'Tesla V100-PCIE-16GB',

	'V100-32-pci': 'Tesla V100-PCIE-32GB',
	'V100-32-PCI': 'Tesla V100-PCIE-32GB',
	'V100-32-p': 'Tesla V100-PCIE-32GB',

	'V100-32-s': 'Tesla V100-PCIE-32GB',
	'V100-32-sxm': 'Tesla V100-PCIE-32GB',
	'V100-32-sxm2': 'Tesla V100-PCIE-32GB',
	'V100-32-SXM': 'Tesla V100-PCIE-32GB',
	'V100-32-SXM2': 'Tesla V100-PCIE-32GB',
	'V100-32': 'Tesla V100-SXM2-32GB',

	'P40': 'Tesla P40',
	'P100': 'Tesla P100-PCIE-16GB',
}

git_dirs = [
	'/home/vagrawal/workspace/foundation',
	# '/home/vagrawal/workspace/gh-projects/hybrid',
	'/home/vagrawal/workspace/humpack',
	'/home/vagrawal/workspace/learn_rep'
]

def write_job(cmds, path, name=None, cddir=None, tmpl=None):
	with open(path, 'w') as f:
		if name is not None:
			f.write('\n# Job script for {}\n\n'.format(name))

		if cddir is not None:
			f.write('cd {}\n'.format(cddir))
		if tmpl is None:
			f.writelines(cmds)
		else:
			sub = '\n'.join(cmds)
			full = tmpl.format(sub)
			f.write(full)
		f.write('\n')



def main(argv=None): # python scripts/create_job.py --script /home/vagrawal/scripts/run.sh --template /home/vagrawal/scripts/template.sh --dir /home/vagrawal/workspace/gh-projects/hybrid/ --gpu 1 --mem 64 --cpu 4 --array --pull --gpu-names V100-32 --bid 1800 --avoid g048
	parser = argparse.ArgumentParser(description='Create a submission script for the cluster')
	parser.add_argument('--name', type=str, default=None,
	                    help='Name of job')
	parser.add_argument('--no-date', dest='use_date', action='store_false',
	                    help='Dont use date/time in name')

	parser.add_argument('-i', '--interactive', action='store_true',
	                    help='Make the job interactive.')


	parser.add_argument('--pull', action='store_true',
	                    help='Update git dir before submitting job/s')

	# parser.add_argument('--use-template', action='store_true',
	#                     help='Use local job template')

	parser.add_argument('--template', type=str, default=None,
	                    help='path to a job template (must have exactly one pair of braces (ie. {}) to insert command')

	parser.add_argument('--array', action='store_true',
	                    help='Treat commands as an array')

	parser.add_argument('--no-output', dest='use_out', action='store_false',
	                    help='Dont log stdout')
	# parser.add_argument('--no-err', dest='use_err', action='store_false',
	#                     help='Dont log stderr')

	# parser.add_argument('--output', type=str, )



	parser.add_argument('--cpu', type=int, default=1,
	                    help='number of cpus')
	parser.add_argument('--mem', type=int, default=1,
	                    help='memory in GB')
	parser.add_argument('--gpu', type=int, default=0,
	                    help='number of cpus')
	parser.add_argument('--fast', action='store_true')
	parser.add_argument('--faster', action='store_true')
	parser.add_argument('--gpu-names', type=str, nargs='+', default=None,
	                    help='specific kinds of gpus that should be used (see GPU_NAMES table)')

	parser.add_argument('--avoid', type=str, nargs='+', default=[],
	                    help='specific node names that should not be used')

	parser.add_argument('--bid', type=int, default=None,
	                    help='the bid (this automatically submits the job after prep)')

	parser.add_argument('--cmd', type=str, default=None,
	                    help='executable command')
	parser.add_argument('--script', type=str, default=None,
	                    help='path to sh script')
	parser.add_argument('--redo', type=str, default=None,
	                    help='path to a job dir or sh file to rerun')

	parser.add_argument('--restart-after', type=float, default=None,
	                    help='time in hours to wait before restarting job (to reset costs, good choices are 1-3)')

	parser.add_argument('--dir', type=str, default=None,
	                    help='path to change to before executing job')
	parser.add_argument('--root', type=str, default='/home/vagrawal/jobs',
	                    help='path to jobs folder')


	args = parser.parse_args(argv)

	if args.pull:
		input('Have you pushed all changes?')

	past_jobs = os.listdir(args.root)

	assert args.cmd is not None or args.script is not None or args.redo is not None, 'nothing to run'

	num = len(past_jobs)

	if args.name is None:
		args.name = 'job{}'.format(str(num).zfill(4))

	if args.use_date:
		now = time.strftime("%y%m%d-%H%M%S")
		args.name = '{}_{}'.format(args.name, now)

	path = os.path.join(args.root, args.name)

	try:
		os.makedirs(path)
	except FileExistsError:
		pass

	job_path = None
	if args.redo is not None:
		if os.path.isdir(args.redo):
			args.redo = os.path.join(args.redo, 'job.sh')
		job_path = args.redo
	# elif args.script is not None:
	# 	job_path = args.script

	# elif args.cmd is not None: # create a new job file
	else:


		cmds = []
		if args.script is not None:
			with open(args.script, 'r') as f:
				cmds.extend([l for l in f.readlines() if len(l) > 1 and l[0] != '#'])
				# print(cmds)
		if args.cmd is not None:
			cmds.append(args.cmd + '\n')
		assert len(cmds)

		job_template = '{}'
		if args.template is not None:
			with open(args.template, 'r') as f:
				job_template = f.read()

		if args.array:
			print('Found {num} commands, will submit {num} replicas'.format(num=len(cmds)))
			for i, cmd in enumerate(cmds):
				jpath = os.path.join(path, 'job_{}.sh'.format(i))
				write_job([cmd], jpath, name=args.name + ' - process: {}'.format(i), cddir=args.dir,
				          tmpl=job_template)

			job_path = os.path.join(path, 'job_$(Process).sh')
			args.array = len(cmds)
		else:
			job_path = os.path.join(path, 'job.sh')

			write_job(cmds, job_path, name=args.name, cddir=args.dir, tmpl=job_template)


	# else:
	# 	raise Exception('nothing to run')


	sub = []

	sub.append('environment = JOBDIR={};JOBEXEC={};PROCESS_ID=$(Process);JOB_ID=$(ID);JOB_NUM={}'.format(path, job_path, num))

	reqs = []

	assert args.mem > 0
	sub.append('request_memory = {}'.format(args.mem*1024))
	sub.append('request_cpus =  {}'.format(args.cpu))
	if args.gpu > 0:
		sub.append('request_gpus =  {}'.format(args.gpu))
		if args.gpu_names is not None:
			reqs.append(' || '.join('CUDADeviceName == \"{}\"'.format(GPU_NAMES[gname]) for gname in args.gpu_names))
			print('Requiring: {}'.format(' or '.join(args.gpu_names)))
		if args.fast:
			print('Fast job')
			reqs.append('CUDAGlobalMemoryMb > 10000')
		if args.faster:
			print('Faster job')
			reqs.append('CUDAGlobalMemoryMb > 15000')
	else:
		print('WARNING: if you are using the template, check that nvidia-smi doesnt get run after the job is complete')



	# print('WARNING: avoiding all "p" nodes')
	# args.avoid.extend(['p001', 'p002', 'p003', 'p004'])

	if args.avoid is not None and len(args.avoid):
		reqs.extend('Target.Machine != "{}.internal.cluster.is.localnet"'.format(n) for n in args.avoid)

	if len(reqs):
		sub.append('requirements = {}'.format(' && '.join('({})'.format(r) for r in reqs)))

	if args.restart_after is not None:
		sub.append('''MaxTime = {}
periodic_hold = (JobStatus =?= 2) && ((CurrentTime - JobCurrentStartDate) >= $(MaxTime))
periodic_hold_reason = "Job runtime exceeded"
periodic_hold_subcode = 1'''.format(int(args.restart_after * 3600)))

	# restart when command exits with 3
	sub.append('''on_exit_hold = (ExitCode =?= 3)
on_exit_hold_reason = "Checkpointed, will resume"
on_exit_hold_subcode = 2
periodic_release = ( (JobStatus =?= 5) && (HoldReasonCode =?= 3) && ((HoldReasonSubCode =?= 1) || (HoldReasonSubCode =?= 2)) )''')

	stdoutname = 'stdout-$(Process).txt' if args.array else 'stdout.txt'
	logname = 'log-$(Process).txt' if args.array else 'log.txt'

	sub.append(sub_fmt.format(exec=job_path,
	                          err=os.path.join(path, stdoutname) if args.use_out else '/tmp/null',
	                          # err=os.path.join(path, 'stderr.txt') if args.use_err else '/tmp/null',
	                          out=os.path.join(path, stdoutname) if args.use_out else '/tmp/null',
	                          log=os.path.join(path, logname),
	                          procs=args.array if args.array is not None else ''))



	sub_path = os.path.join(path, 'submit.sub')
	with open(sub_path, 'w') as f:
		f.write('\n'.join(sub))
	# with open(os.path.join(os.environ['HOME'], 'job.sub'), 'w') as f:
	# 	f.write('\n'.join(sub))

	pickle.dump(args, open(os.path.join(path, 'args.pkl'),'wb'))

	print('Job {} prepared'.format(args.name))

	if args.pull:

		for gd in git_dirs:
			os.system('cd {}; git pull'.format(gd))
		# os.system('cd $HOME')

	if args.bid is not None:

		os.system('condor_submit_bid {bid} {job}{i}'.format(bid=args.bid, job=sub_path, i=' -i' if args.interactive else ''))

		print('Job submitted with a bid: {}'.format(args.bid))



if __name__ == '__main__':
	main()



