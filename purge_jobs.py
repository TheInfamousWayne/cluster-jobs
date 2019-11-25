
import sys, os, shutil

if input('really empty ~/jobs/? y/[n] ') == 'y':
	shutil.rmtree('/home/fleeb/jobs')
	os.mkdir('/home/fleeb/jobs')

	os.remove('/home/fleeb/registry.txt')

	print('Registry and jobs/ purged.')

else:
	print('Did nothing.')





