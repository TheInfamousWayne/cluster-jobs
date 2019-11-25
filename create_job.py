
import sys, os
import time
import re
import argparse
import pickle

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
	'K80': 'Tesla K80',
	'K20': 'Tesla K20Xm',
	'V100-16': 'Tesla V100-PCIE-16GB',
	'V100-32-pci': 'Tesla V100-PCIE-32GB',
	'V100-32': 'Tesla V100-SXM2-32GB',
	'P40': 'Tesla P40',
	'P100': 'Tesla P100-PCIE-16GB',
}

def main(argv=None):
	parser = argparse.ArgumentParser(description='Create a submission script for the cluster')
	parser.add_argument('--name', type=str, default=None,
	                    help='Name of job')
	parser.add_argument('--no-date', dest='use_date', action='store_false',
	                    help='Dont use date/time in name')


	parser.add_argument('--no-output', dest='use_out', action='store_false',
	                    help='Dont log stdout')
	parser.add_argument('--no-err', dest='use_err', action='store_false',
	                    help='Dont log stderr')

	# parser.add_argument('--output', type=str, )



	parser.add_argument('--cpu', type=int, default=1,
	                    help='number of cpus')
	parser.add_argument('--mem', type=int, default=1,
	                    help='memory in GB')
	parser.add_argument('--gpu', type=int, default=0,
	                    help='number of cpus')
	parser.add_argument('--fast', action='store_true')
	parser.add_argument('--faster', action='store_true')
	parser.add_argument('--gpu-names', type=str, nargs='+', default=None)

	parser.add_argument('--bid', type=int, default=None,
	                    help='the bid (this automatically submits the job after prep)')

	parser.add_argument('--replicas', type=int, default=None,
	                    help='number of replicas')

	# parser.add_argument('--pass-path', action='store_true',
	#                     help='pass job folder path to executable')

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
	parser.add_argument('--root', type=str, default='/home/fleeb/jobs',
	                    help='path to jobs folder')


	args = parser.parse_args(argv)

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
		job_path = os.path.join(path, 'job.sh')

		cmds = []
		if args.script is not None:
			with open(args.script, 'r') as f:
				cmds.extend([l for l in f.readlines() if len(l) == 0 or l[0] != '#'])
		if args.cmd is not None:
			cmds.append(args.cmd + '\n')
		assert len(cmds)

		with open(job_path, 'w') as f:
			f.write('\n# Job script for {}\n\n'.format(args.name))
			if args.dir is not None:
				f.write('cd {}\n'.format(args.dir))
			f.writelines(cmds)
			f.write('\n')

	# else:
	# 	raise Exception('nothing to run')


	sub = []

	sub.append('environment = JOBDIR={};JOBEXEC={};PROCESS_ID=$(Process);JOB_ID=$(ID)'.format(path, job_path))

	reqs = []

	assert args.mem > 0
	sub.append('request_memory = {}'.format(args.mem*1024))
	sub.append('request_cpus =  {}'.format(args.cpu))
	if args.gpu > 0:
		sub.append('request_gpus =  {}'.format(args.gpu))
		if args.gpu_names is not None:
			reqs.append(' || '.join('CUDADeviceName == \"{}\"'.format(GPU_NAMES[gname]) for gname in args.gpu_names))
		if args.fast:
			print('Fast job')
			reqs.append('CUDAGlobalMemoryMb > 10000')
		if args.faster:
			print('Faster job')
			reqs.append('CUDAGlobalMemoryMb > 15000')


	if len(reqs):
		sub.append('requirements = {}'.format(' && '.join('({})'.format(r) for r in reqs)))

	# restart when command exits with 3
	sub.append('''on_exit_hold = (ExitCode =?= 3)
on_exit_hold_reason = "Checkpointed, will resume"
on_exit_hold_subcode = 2
periodic_release = ( (JobStatus =?= 5) && (HoldReasonCode =?= 3) && (HoldReasonSubCode =?= 2) )''')

	if args.restart_after is not None:
		sub.append('''MaxTime = {}
periodic_hold = (JobStatus =?= 2) && ((CurrentTime - JobCurrentStartDate) >= $(MaxTime))
periodic_hold_reason = "Job runtime exceeded"
periodic_hold_subcode = 1'''.format(int(args.restart_after*3600)))


	sub.append(sub_fmt.format(exec=job_path,
	                          err=os.path.join(path, 'out.txt') if args.use_out else '/tmp/null',
	                          # err=os.path.join(path, 'err.txt') if args.use_err else '/tmp/null',
	                          out=os.path.join(path, 'out.txt') if args.use_out else '/tmp/null',
	                          log=os.path.join(path, 'log.txt'),
	                          procs=args.replicas if args.replicas is not None else ''))



	sub_path = os.path.join(path, 'submit.sub')
	with open(sub_path, 'w') as f:
		f.write('\n'.join(sub))
	# with open(os.path.join(os.environ['HOME'], 'job.sub'), 'w') as f:
	# 	f.write('\n'.join(sub))

	pickle.dump(args, open(os.path.join(path, 'args.pkl'),'wb'))

	print('Job {} prepared'.format(args.name))

	if args.bid is not None:

		os.system('condor_submit_bid {bid} {job}'.format(bid=args.bid, job=sub_path))

		print('Job submitted with a bid: {}'.format(args.bid))



if __name__ == '__main__':
	main()



