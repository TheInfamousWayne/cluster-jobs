#!/bin/sh

# python create_job.py --script /home/fleeb/run.sh --dir /home/fleeb/workspace/foundation/hybrid/ --gpu 1 --mem 8 --cpu 4 --bid 1000

export FOUNDATION_RUN_MODE="cluster"

export FOUNDATION_SAVE_DIR="/home/fleeb/trained_nets/"
export FOUNDATION_DATA_DIR="/home/fleeb/local_data/"

#export DISENTANGLEMENT_LIB_DATA="/home/fleeb/local_data"

echo '-- starting job --'

cd /home/fleeb/workspace/foundation/mnist

unbuffer python project.py model --name test-cls --training.epochs 10

if [ $? -eq 3 ]
then
  echo '-- pausing for restart --'
  exit 3
fi

echo '-- job complete --'

