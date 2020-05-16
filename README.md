# How to use?

	python3 /home/vagrawal/cluster-jobs/create_job.py --script /home/vagrawal/cluster-jobs/run.sh --template /home/vagrawal/cluster-jobs/template.sh --dir /home/vagrawal/ --gpu 2 --mem 64 --cpu 1 --array --pull --gpu-names V100-32 --bid 1000 --avoid g048


There are three folders of interest. (There could be more if your codebase is on multiple repos)

* ~/cluster-jobs
* ~/your_repo(s)_which_contains_your_code_to_run_and_data
* ~/jobs (if this doesn't exist, mkdir it)


### Jobs folder

* Everytime you submit a job (i.e. python3 create_job.py …..), a new subfolder is created inside ~/jobs/
* Each of those subfolders contains a few files.
* stdout-idx.txt : this contains the terminal output that you would get if you would run the "python your_main_file.py" file in local machine (used for debugging) 


### Git for submitting jobs (this repo)

* “cluster-jobs”
* git pull all the latest changes (on the cluster)
* Before submitting any job, make sure you have a “~/jobs” folder on your cluster


### Data & Files

* This contains the actual files that you need to run on cluster
* git pull all the repos that you need. This would include all the data and files that you need to run.
* (Let's say) Path where you cloned this repo in the cluster: ~/your_repo(s)_which_contains_your_code_to_run_and_data


## How to submit a job?

In cluster-jobs folder, you have three files.

* **[run.sh](https://gitlab.tuebingen.mpg.de/vagrawal/cluster-jobs/-/blob/master/run.sh)**
contains the python commands to run ("unbuffer" is optional) → (unbuffer) python file_name.py 
* **[template.sh](https://gitlab.tuebingen.mpg.de/vagrawal/cluster-jobs/-/blob/master/template.sh)**
contains the new and updated/modified environment variables.
* **[create_job.py](https://gitlab.tuebingen.mpg.de/vagrawal/cluster-jobs/-/blob/master/create_job.py)**
this is the **submission script**. it's responsible for creating jobs and submitting them. It takes each line from run.sh and create a job for it. This also pulls all the git-repos that you mention [here](https://gitlab.tuebingen.mpg.de/vagrawal/cluster-jobs/-/blob/master/create_job.py#L49) before submitting your jobs.

You just have to run this **create_job.py** file, with the required arguments to handle everything. 
It runs on python3.

To run this submission script, this sample command could be
	
	python3 /home/vagrawal/cluster-jobs/create_job.py --script /home/vagrawal/cluster-jobs/run.sh --template /home/vagrawal/cluster-jobs/template.sh --dir /home/vagrawal/ --gpu 2 --mem 64 --cpu 4 --array --pull --gpu-names V100-32 --bid 1800 --avoid g048

* **--dir** the jobs are submitted from this folder. This becomes the "pwd" (present working directory).

For information on other tags, check out the [argument parser](https://gitlab.tuebingen.mpg.de/vagrawal/cluster-jobs/-/blob/master/create_job.py#L74) in **create_job.py**

### Important

If your project needs to activate a virtual environment, it is suggested to activate it before running the submission script. (create_job.py)
	

### Miscellaneous

To login to the cluster,
	$ssh username@login.cluster.is.localnet

To load cuda, do this from inside the cluster: 
	$module load cuda/10.2

You need to load these modules every time you open a new terminal and activate your env.




