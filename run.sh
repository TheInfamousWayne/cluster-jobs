#!/bin/sh

# python create_job.py --script /home/fleeb/run.sh --dir /home/fleeb/workspace/foundation/hybrid/ --gpu 1 --mem 8 --cpu 4 --bid 1000

export FOUNDATION_RUN_MODE="cluster"

export FOUNDATION_SAVE_DIR="/home/fleeb/trained_nets/"
export FOUNDATION_DATA_DIR="/home/fleeb/local_data/"

export JOB_REGISTRY_PATH="/home/fleeb/registry.txt"

#export DISENTANGLEMENT_LIB_DATA="/home/fleeb/local_data"

echo '-- starting job --'

#cd /home/fleeb/workspace/foundation/mnist
#
#unbuffer python project.py model --name test-cls

cd /home/fleeb/workspace/gh-projects/hybrid

# WAE

unbuffer python hybrid.py dspr --name test-cls

#unbuffer python hybrid.py dspr --name dspr-wae --model.gan_wt 0

#unbuffer python hybrid.py dspr --name dspr-wae-lr5e-4 --model.gan_wt 0 --optim.lr 0.0005
#
#unbuffer python hybrid.py dspr --name dspr-wae-defadam --model.gan_wt 0 --optim.beta1 0.9 --optim.beta2 0.999
#
#unbuffer python hybrid.py dspr --name dspr-wae-bs256 --model.gan_wt 0 --dataset.batch_size 256
#
#unbuffer python hybrid.py dspr --name dspr-wae-bs256 --model.gan_wt 0 --dataset.batch_size 256 --optim.lr 0.0005
#
## WGAN
#
#unbuffer python hybrid.py dspr --name dspr-wgan-step4 --model.gan_wt 1
#
#unbuffer python hybrid.py dspr --name dspr-wgan-lr3x --model.gan_wt 1 --model.disc_steps 1 --model.discriminator.optim.lr 0.0003
#
#unbuffer python hybrid.py dspr --name dspr-wgan-lr5x --model.gan_wt 1 --model.disc_steps 1 --model.discriminator.optim.lr 0.0005
#
#unbuffer python hybrid.py dspr --name dspr-wgan-lr8x --model.gan_wt 1 --model.disc_steps 1 --model.discriminator.optim.lr 0.0008
#
#unbuffer python hybrid.py dspr --name dspr-wgan-lr10x --model.gan_wt 1 --model.disc_steps 1 --model.discriminator.optim.lr 0.001
#
#
## WPP
#
#unbuffer python hybrid.py dspr --name dspr-wpp-ganwt5 --model.gan_wt 1e-5
#
#unbuffer python hybrid.py dspr --name dspr-wpp-ganwt4 --model.gan_wt 1e-4
#
#unbuffer python hybrid.py dspr --name dspr-wpp-ganwt3 --model.gan_wt 1e-3


# FWAE




if [ $? -eq 3 ]
then
  echo '-- pausing for restart --'
  exit 3
fi

echo '-- job complete --'

