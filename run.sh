

#unbuffer python hybrid.py dspr --name test-cls

#unbuffer python project.py model --name test-cls-0 --training.epochs 30
#
#unbuffer python project.py model --name test-cls-1 --training.epochs 30
#
#unbuffer python project.py model --name test-cls-2 --training.epochs 30

#unbuffer python hybrid.py dspr --name test-wae-8 --model.gan_wt 0 --model.latent_dim 8
#
#unbuffer python hybrid.py dspr --name test-wae-32 --model.gan_wt 0 --model.latent_dim 32
#
#unbuffer python hybrid.py dspr --name test-wae-64 --model.gan_wt 0 --model.latent_dim 64




# Fast

# 0 5868643.
#unbuffer python hybrid.py dspr --name wae --model.gan_wt 0

# 1 5868644.
#unbuffer python hybrid.py dspr --name wae-noisep1 --model.gan_wt 0 --model.rec_noise 0.1
#
# 2
#unbuffer python hybrid.py dspr --name wae-noisep2 --model.gan_wt 0 --model.rec_noise 0.2
# 3
#unbuffer python hybrid.py dspr --name wae-noisep4 --model.gan_wt 0 --model.rec_noise 0.4
#
# 4
#unbuffer python hybrid.py dspr --name wae-noisep2-beta200 --model.gan_wt 0 --model.rec_noise 0.2 --model.latent_reg_wt 200
# 5
#unbuffer python hybrid.py dspr --name wae-noisep2-beta400 --model.gan_wt 0 --model.rec_noise 0.2 --model.latent_reg_wt 400


#export RESTART_AFTER="5"

# 6
#unbuffer python hybrid.py dropin_factor --name fwaedin-ganwt3-priorp2 --model.gan_wt 1e-3 --model.reg_prior 0.2
# 7
#unbuffer python hybrid.py dropin_factor --name fwaedin-ganwt3-priorp5 --model.gan_wt 1e-3 --model.reg_prior 0.5
# 8
#unbuffer python hybrid.py dropin_factor --name fwaedin-ganwt4-priorp2 --model.gan_wt 1e-4 --model.reg_prior 0.2
#
#
# 9
#unbuffer python hybrid.py factor --name fwae
# 10
#unbuffer python hybrid.py factor --name fwae-beta200-noisep2 --model.latent_reg_wt 200 --model.rec_noise 0.2
# 11
#unbuffer python hybrid.py factor --name fwae-priorp2 --model.reg_prior 0.2
#
## dropin
# 12
#unbuffer python hybrid.py dropin --name dropin-ganwt5 --model.gan_wt 1e-5
# 13
#unbuffer python hybrid.py dropin --name dropin-ganwt4  --model.gan_wt 1e-4
# 14
#unbuffer python hybrid.py dropin --name dropin-ganwt3 --model.gan_wt 1e-3
# 15
#unbuffer python hybrid.py dropin --name dropin-ganwt2 --model.gan_wt 1e-2
#
## gan
# 16, 19, 20, 21
#unbuffer python hybrid.py dspr --name wgan-step4 --model.gan_wt 1 --model.gen_types [\"gen\"]
#
## wpp
# 17
#unbuffer python hybrid.py dspr --name wpp-ganwt5 --model.gan_wt 1e-5
# 18
#unbuffer python hybrid.py dspr --name wpp-ganwt4 --model.gan_wt 1e-4


# 31, 33
#unbuffer python hybrid.py dspr --name wgan-lr3x --model.gan_wt 1 --model.disc_steps 1 --model.discriminator.optim.lr 0.0003 --model.gen_types [\"gen\"]
#
#unbuffer python hybrid.py dspr --name wgan-lr5x --model.gan_wt 1 --model.disc_steps 1 --model.discriminator.optim.lr 0.0005 --model.gen_types [\"gen\"]
#
#unbuffer python hybrid.py dspr --name wgan-lr8x --model.gan_wt 1 --model.disc_steps 1 --model.discriminator.optim.lr 0.0008 --model.gen_types [\"gen\"]
#
#unbuffer python hybrid.py dspr --name wgan-lr10x --model.gan_wt 1 --model.disc_steps 1 --model.discriminator.optim.lr 0.001 --model.gen_types [\"gen\"]
#
#
#unbuffer python hybrid.py dspr --name wae-noisep1-beta200 --model.gan_wt 0 --model.rec_noise 0.1 --model.latent_reg_wt 200
#
#unbuffer python hybrid.py dspr --name wae-noisep1-beta400 --model.gan_wt 0 --model.rec_noise 0.1 --model.latent_reg_wt 400
#
#unbuffer python hybrid.py dspr --name wae-noisep2-beta800 --model.gan_wt 0 --model.rec_noise 0.2 --model.latent_reg_wt 800
#
#
#unbuffer python hybrid.py factor --name fwae-priorp2-noisep1-beta500 --model.rec_noise 0.1 --model.reg_prior 0.2 --model.latent_reg_wt 500
#
#unbuffer python hybrid.py factor --name fwae-priorp2-noisep1-beta1000 --model.rec_noise 0.1 --model.reg_prior 0.2 --model.latent_reg_wt 1000
#
#
#
#unbuffer python hybrid.py factor --resume fwaedin-ganwt4-priorp2_191125-202350 --extend 20
#
#unbuffer python hybrid.py dropin_factor --name fwaedin-ganwt4-priorp2-beta500 --model.gan_wt 1e-4 --model.reg_prior 0.2 --model.latent_reg_wt 500
#
#unbuffer python hybrid.py factor --name fwae-lr5e-5 --optim.lr 5e-5
#
#unbuffer python hybrid.py factor --name fwae-lr2e-4 --optim.lr 2e-4
#
#unbuffer python hybrid.py factor --name fwae-lr4e-4 --optim.lr 4e-4
#
#unbuffer python hybrid.py factor --name fwae-lr1e-3 --optim.lr 1e-3
##
##
#unbuffer python hybrid.py dropin_factor --name fwaedin-ganwt4-priorp25 --model.gan_wt 1e-4 --model.reg_prior 0.25
#
#unbuffer python hybrid.py dropin_factor --name fwaedin-ganwt4-priorp25-lr4e-4 --model.gan_wt 1e-4 --model.reg_prior 0.25 --optim.lr 4e-4
#
#unbuffer python hybrid.py dropin_factor --name fwaedin-ganwt4-priorp25-noisep1-beta200 --model.gan_wt 1e-4 --model.reg_prior 0.25 --model.rec_noise 0.1  --model.latent_reg_wt 200
#
#unbuffer python hybrid.py dropin_factor --name fwaedin-ganwt4-priorp2-noisep1-beta500 --model.gan_wt 1e-4 --model.reg_prior 0.2 --model.rec_noise 0.1  --model.latent_reg_wt 500


#unbuffer python hybrid.py dropin --name dropin-ganwt5 --model.gan_wt 1e-5
#
#unbuffer python hybrid.py dropin --name dropin-ganwt4  --model.gan_wt 1e-4
#
#unbuffer python hybrid.py dropin --name dropin-ganwt3 --model.gan_wt 1e-3
#
#unbuffer python hybrid.py dropin --name dropin-ganwt2 --model.gan_wt 1e-2
#
#unbuffer python hybrid.py dspr --name wgan-step4 --model.gan_wt 1
#
#unbuffer python hybrid.py dspr --name wgan-step5 --model.gan_wt 1 --model.disc_steps 5
#
#unbuffer python hybrid.py vae --name vae
#
#unbuffer python hybrid.py vae --name vae-lr1e-3 --optim.lr 1e-3
#
#unbuffer python hybrid.py vae --name vae-lr1e-4-defbetas --optim.lr 1e-4 --optim.beta1 0.9 --optim.beta2 0.999
#
#unbuffer python hybrid.py vae --name vae-lr4e-4-defbetas --optim.lr 4e-4 --optim.beta1 0.9 --optim.beta2 0.999
#
#unbuffer python hybrid.py dropin_factor --name fwaedin-ganwt2e-4-priorp25 --model.gan_wt 2e-4 --model.reg_prior 0.25
#
#unbuffer python hybrid.py dropin_factor --name fwaedin-ganwt4-priorp25-step5 --model.gan_wt 1e-4 --model.reg_prior 0.25 --model.disc_steps 5


#####################



#unbuffer python hybrid.py wpp --resume wgan-step5_191127-202048 --extend 40
#
#unbuffer python hybrid.py wpp --resume wgan-step4_191127-202052 --extend 40
#
#
#unbuffer python hybrid.py vae --name vae-lr4e-4 --optim.lr 4e-4
#
#unbuffer python hybrid.py vae --name vae-defbetas --optim.beta1 0.9 --optim.beta2 0.999
#
#unbuffer python hybrid.py vae --name vae-lr1e-3-defbetas --optim.lr 1e-3 --optim.beta1 0.9 --optim.beta2 0.999
#
#
#
#unbuffer python hybrid.py vae --name vae-beta10-defbetas --optim.lr 4e-4 --optim.beta1 0.9 --optim.beta2 0.999 --model.latent_reg_wt 10
#
#unbuffer python hybrid.py vae --name vae-betap1-defbetas --optim.lr 4e-4 --optim.beta1 0.9 --optim.beta2 0.999 --model.latent_reg_wt 0.1
#
#unbuffer python hybrid.py vae --name vae-betap01-defbetas --optim.lr 4e-4 --optim.beta1 0.9 --optim.beta2 0.999 --model.latent_reg_wt 1e-2
#
#unbuffer python hybrid.py vae --name vae-betap001-defbetas --optim.lr 4e-4 --optim.beta1 0.9 --optim.beta2 0.999 --model.latent_reg_wt 1e-3
#
#
#
#unbuffer python hybrid.py fvae --name fvae
#
#unbuffer python hybrid.py fvae --name fvae-lr4e-4 --optim.lr 4e-4
#
#unbuffer python hybrid.py fvae --name fvae-defbetas-lr4e-4 --optim.lr 4e-4 --optim.beta1 0.9 --optim.beta2 0.999
#
#unbuffer python hybrid.py fvae --name fvae-defbetas --optim.beta1 0.9 --optim.beta2 0.999
#
#unbuffer python hybrid.py fvae --name fvae-defbetas-betap1 --optim.beta1 0.9 --optim.beta2 0.999 --model.latent_reg_wt 0.1
#
#unbuffer python hybrid.py fvae --name fvae-defbetas-betap1-priorp25 --optim.beta1 0.9 --optim.beta2 0.999 --model.reg_prior 0.25 --model.latent_reg_wt 0.1
#
#unbuffer python hybrid.py fvae --name fvae-defbetas-betap1-priorp1 --optim.beta1 0.9 --optim.beta2 0.999 --model.reg_prior 0.1 --model.latent_reg_wt 0.1
#
#
#
#unbuffer python hybrid.py dropin_vae --name dvae-ganwt4-lr1e-4 --optim.lr 1e-4  --model.gan_wt 1e-4
#
#unbuffer python hybrid.py dropin_vae --name dvae-ganwt4 --model.gan_wt 1e-4
#
#unbuffer python hybrid.py dropin_vae --name dvae-ganwt3 --model.gan_wt 1e-3
#
#unbuffer python hybrid.py dropin_vae --name dvae-ganwt4-probp5 --model.gan_wt 1e-4 --prob 0.5
#
#unbuffer python hybrid.py dropin_vae --name dvae-ganwt3-probp5 --model.gan_wt 1e-3 --prob 0.5
#
#unbuffer python hybrid.py dropin_vae --name dvae-ganwt4-betap1 --model.gan_wt 1e-4  --model.latent_reg_wt 0.1
#
#unbuffer python hybrid.py dropin_vae --name dvae-ganwt3-betap1 --model.gan_wt 1e-3  --model.latent_reg_wt 0.1
#
#unbuffer python hybrid.py dropin_vae --name dvae-ganwt4-betap1-probp5 --model.gan_wt 1e-4 --prob 0.5 --model.latent_reg_wt 0.1
#
#unbuffer python hybrid.py dropin_vae --name dvae-ganwt3-betap1-probp5 --model.gan_wt 1e-3 --prob 0.5 --model.latent_reg_wt 0.1
#
#
#unbuffer python hybrid.py dropin_factor_vae --name fvaedin-ganwt4-priorp25 --model.gan_wt 1e-4 --model.reg_prior 0.25
#
#unbuffer python hybrid.py dropin_factor_vae --name fvaedin-ganwt4-priorp25-betap1 --model.gan_wt 1e-4 --model.reg_prior 0.25  --model.latent_reg_wt 0.1
#
#unbuffer python hybrid.py dropin_factor_vae --name fvaedin-ganwt3-priorp25-betap1 --model.gan_wt 1e-3 --model.reg_prior 0.25 --model.latent_reg_wt 0.1
#
#unbuffer python hybrid.py dropin_factor_vae --name fvaedin-ganwt4-priorp25-step5-betap1 --model.gan_wt 1e-4 --model.reg_prior 0.25 --model.disc_steps 5 --model.latent_reg_wt 0.1


#######################
# 3d shapes

#unbuffer python hybrid.py 3dshapes --name wpp-ganwt4 --model.gan_wt 1e-4
#
#
#unbuffer python hybrid.py 3dshapes --name wgan-step4 --model.gan_wt 1
#
#
#unbuffer python hybrid.py 3dshapes --name wae --model.gan_wt 0
#
#unbuffer python hybrid.py 3dshapes --name wae-defbetas --optim.beta1 0.9 --optim.beta2 0.999 --model.gan_wt 0
#
#unbuffer python hybrid.py 3dshapes --name wae-lr4e-4-defbetas --optim.lr 4e-4 --optim.beta1 0.9 --optim.beta2 0.999 --model.gan_wt 0
#
#
# 50
#unbuffer python hybrid.py vae 3dshapes --name vae
#
#unbuffer python hybrid.py vae 3dshapes --name vae-defbetas --optim.beta1 0.9 --optim.beta2 0.999
#
#unbuffer python hybrid.py vae 3dshapes --name vae-lr4e-4-defbetas --optim.lr 4e-4 --optim.beta1 0.9 --optim.beta2 0.999
#
#unbuffer python hybrid.py fvae 3dshapes --name fvae
##
#unbuffer python hybrid.py factor 3dshapes --name fwae



#unbuffer python hybrid.py 3dshapes --resume wpp-ganwt4_191129-174949 --extend 100
#
#
#unbuffer python hybrid.py 3dshapes --resume wgan-step4_191129-174945 --extend 100
#
#
#unbuffer python hybrid.py 3dshapes --resume wae_191129-174943 --extend 100
#
#unbuffer python hybrid.py 3dshapes --resume wae-defbetas_191129-174949 --extend 100
#
#unbuffer python hybrid.py 3dshapes --resume wae-lr4e-4-defbetas_191129-174944 --extend 100
#
#unbuffer python hybrid.py vae 3dshapes --resume vae_191202-110600 --extend 100
#
#unbuffer python hybrid.py vae 3dshapes --resume vae-defbetas_191202-110603 --extend 100
#
#unbuffer python hybrid.py vae 3dshapes --resume vae-lr4e-4-defbetas_191202-110608 --extend 100
#
#unbuffer python hybrid.py fvae 3dshapes --resume fvae_191202-110600 --extend 100
##
#unbuffer python hybrid.py factor 3dshapes --resume fwae_191202-110603 --extend 100


### 54
#unbuffer python hybrid.py new 3dshapes --name wgan --model.gan_wt 1
#
#unbuffer python hybrid.py new 3dshapes --name wgan-both-b1p5b2p9 --model.gan_wt 1 --optim.beta1 0.5 --optim.beta2 0.9
#
#unbuffer python hybrid.py new 3dshapes --name wgan-step8 --model.gan_wt 1 --model.disc_steps 8
#
#
#unbuffer python hybrid.py new 3dshapes --name wgan-lr4e-4 --model.gan_wt 1 --optim.lr 4e-4 --model.discriminator.optim.lr 4e-4
#
#unbuffer python hybrid.py new 3dshapes --name wgan-lr2e-4 --model.gan_wt 1 --optim.lr 2e-4 --model.discriminator.optim.lr 2e-4
#
#unbuffer python hybrid.py new 3dshapes --name wgan-lr8e-4 --model.gan_wt 1 --optim.lr 8e-4 --model.discriminator.optim.lr 8e-4
#
#unbuffer python hybrid.py new 3dshapes --name wgan-lr1e-5 --model.gan_wt 1 --optim.lr 1e-5 --model.discriminator.optim.lr 1e-5
#
#unbuffer python hybrid.py new 3dshapes --name wgan-lr4e-5 --model.gan_wt 1 --optim.lr 4e-5 --model.discriminator.optim.lr 4e-5


### 55
#unbuffer python hybrid.py new 3dshapes --name wgan-lr4e-4-both-b1p5b2p9 --model.gan_wt 1 --optim.beta1 0.5 --optim.beta2 0.9 --optim.lr 4e-4 --model.discriminator.optim.lr 4e-4
#
#
#unbuffer python hybrid.py new 3dshapes --name wgan-lr1e-4-disclr3x --model.gan_wt 1 --optim.lr 1e-4 --model.discriminator.optim.lr 3e-4 --model.disc_steps 1
#
#unbuffer python hybrid.py new 3dshapes --name wgan-lr1e-4-disclr5x --model.gan_wt 1 --optim.lr 1e-4 --model.discriminator.optim.lr 5e-4 --model.disc_steps 1
#
#unbuffer python hybrid.py new 3dshapes --name wgan-lr1e-4-disclr8x --model.gan_wt 1 --optim.lr 1e-4 --model.discriminator.optim.lr 8e-4 --model.disc_steps 1
#
#unbuffer python hybrid.py new 3dshapes --name wgan-lr1e-4-disclr10x --model.gan_wt 1 --optim.lr 1e-4 --model.discriminator.optim.lr 1e-3 --model.disc_steps 1
#
#
#unbuffer python hybrid.py new 3dshapes --name wgan-lr2e-4-disclr3x --model.gan_wt 1 --optim.lr 2e-4 --model.discriminator.optim.lr 6e-4 --model.disc_steps 1
#
#unbuffer python hybrid.py new 3dshapes --name wgan-lr4e-4-disclr3x --model.gan_wt 1 --optim.lr 4e-4 --model.discriminator.optim.lr 1.2e-3 --model.disc_steps 1
#
#unbuffer python hybrid.py new 3dshapes --name wgan-lr2e-4-disclr5x --model.gan_wt 1 --optim.lr 2e-4 --model.discriminator.optim.lr 1e-3 --model.disc_steps 1
#
#unbuffer python hybrid.py new 3dshapes --name wgan-lr4e-4-disclr5x --model.gan_wt 1 --optim.lr 4e-4 --model.discriminator.optim.lr 2e-3 --model.disc_steps 1


### 56
#unbuffer python hybrid.py new 3dshapes --name wgan-lr4e-4-disclr10x --model.gan_wt 1 --optim.lr 4e-4 --model.discriminator.optim.lr 4e-3 --model.disc_steps 1
#
#unbuffer python hybrid.py new 3dshapes --name wgan-lr4e-4-disclr8x --model.gan_wt 1 --optim.lr 4e-4 --model.discriminator.optim.lr 3.2e-3 --model.disc_steps 1
#
#unbuffer python hybrid.py new 3dshapes --name wgan-lr8e-4-disclr5x --model.gan_wt 1 --optim.lr 8e-4 --model.discriminator.optim.lr 4e-3 --model.disc_steps 1
#
#unbuffer python hybrid.py new 3dshapes --name wgan-lr1e-3-disclr5x --model.gan_wt 1 --optim.lr 1e-3 --model.discriminator.optim.lr 5e-3 --model.disc_steps 1

### 57
#unbuffer python hybrid.py new 3dshapes --resume wgan-lr4e-4-disclr10x_191203-150839 --extend 100
#
#unbuffer python hybrid.py new 3dshapes --resume wgan-lr1e-3-disclr5x_191203-150819 --extend 100
#
#unbuffer python hybrid.py new 3dshapes --resume wgan-lr4e-4-disclr8x_191203-150820 --extend 100

### 58
#unbuffer python hybrid.py new 3dshapes --resume wgan-lr8e-4-disclr5x_191203-150821 --extend 100



unbuffer python hybrid.py 3dshapes --name wae --model.gan_wt 0


unbuffer python hybrid.py vae 3dshapes --name vaep01 --model.gan_wt 0 --model.latent_reg_wt 0.01

unbuffer python hybrid.py vae 3dshapes --name vaep1 --model.gan_wt 0 --model.latent_reg_wt 0.1

unbuffer python hybrid.py vae 3dshapes --name vaep2 --model.gan_wt 0 --model.latent_reg_wt .2

unbuffer python hybrid.py vae 3dshapes --name vaep5 --model.gan_wt 0 --model.latent_reg_wt .5

unbuffer python hybrid.py vae 3dshapes --name vae --model.gan_wt 0 --model.latent_reg_wt 1

unbuffer python hybrid.py vae 3dshapes --name vae2 --model.gan_wt 0 --model.latent_reg_wt 2

unbuffer python hybrid.py vae 3dshapes --name vae4 --model.gan_wt 0 --model.latent_reg_wt 4


unbuffer python hybrid.py vae 3dshapes --name vae-adamp5p9 --model.gan_wt 0 --model.beta1 0.5 --model.beta2 0.9

unbuffer python hybrid.py 3dshapes --name wae-adamp5p9 --model.gan_wt 0 --model.beta1 0.5 --model.beta2 0.9

unbuffer python hybrid.py vae 3dshapes --name vae-adamp5p999 --model.gan_wt 0 --model.beta1 0.5 --model.beta2 0.999

unbuffer python hybrid.py 3dshapes --name wae-adamp5p999 --model.gan_wt 0 --model.beta1 0.5 --model.beta2 0.999

unbuffer python hybrid.py 3dshapes --name wae-lr5e-4 --model.gan_wt 0 model.lr 5e-4

unbuffer python hybrid.py 3dshapes --name wae-lr2e-3 --model.gan_wt 0 model.lr 2e-3


unbuffer python hybrid.py plateau 3dshapes --name wae-plat --model.gan_wt 0

unbuffer python hybrid.py plateau vae 3dshapes --name vae-plat --model.gan_wt 0 --model.latent_reg_wt 1

unbuffer python hybrid.py plateau vae 3dshapes --name vaep5-plat --model.gan_wt 0 --model.latent_reg_wt .5

unbuffer python hybrid.py plateau vae 3dshapes --name vaep1-plat --model.gan_wt 0 --model.latent_reg_wt .1



unbuffer python hybrid.py 3dshapes --name gan --model.gan_wt 1

unbuffer python hybrid.py 3dshapes --name gan-adamp5p999 --model.gan_wt 1 --model.beta1 0.5 --model.beta2 0.999

unbuffer python hybrid.py 3dshapes --name gan-adamp5p9 --model.gan_wt 1 --model.beta1 0.5 --model.beta2 0.9

unbuffer python hybrid.py 3dshapes --name gan-lrp5e-4 --model.gan_wt 1 --model.discriminator.lr 2.5e-3 --model.lr 5e-4

unbuffer python hybrid.py 3dshapes --name gan-disclr3x --model.gan_wt 1 --model.discriminator.lr 3e-3

unbuffer python hybrid.py 3dshapes --name gan-disclr8x --model.gan_wt 1 --model.discriminator.lr 8e-3

unbuffer python hybrid.py 3dshapes --name gan-disclr10x --model.gan_wt 1 --model.discriminator.lr 1e-2

unbuffer python hybrid.py 3dshapes --name gan-lrstep40 --model.gan_wt 1 --model.scheduler_step 40

unbuffer python hybrid.py plateau 3dshapes --name gan-plat --model.gan_wt 1

unbuffer python hybrid.py 3dshapes --name gan-nolrdecay --model.gan_wt 1 --model.scheduler_type _x_

unbuffer python hybrid.py 3dshapes --name gan-disclr8x-nolrdecay --model.gan_wt 1 --model.discriminator.lr 8e-3 --model.scheduler_type _x_

unbuffer python hybrid.py 3dshapes --name gan-disclr10x-nolrdecay --model.gan_wt 1 --model.discriminator.lr 1e-2 --model.scheduler_type _x_



unbuffer python hybrid.py 3dshapes --name wpp1e-5 --model.gan_wt 1e-5

unbuffer python hybrid.py 3dshapes --name wpp1e-4 --model.gan_wt 1e-4

unbuffer python hybrid.py 3dshapes --name wpp1e-3 --model.gan_wt 1e-3


unbuffer python hybrid.py plateau 3dshapes --name wpp1e-4 --model.gan_wt 1e-4

unbuffer python hybrid.py plateau 3dshapes --name wpp5e-5 --model.gan_wt 5e-5

unbuffer python hybrid.py plateau 3dshapes --name wpp2e-4 --model.gan_wt 2e-4


unbuffer python hybrid.py 3dshapes --name wpp1e-4-adamp5p999 --model.gan_wt 1e-4 --model.beta1 0.5 --model.beta2 0.999

unbuffer python hybrid.py 3dshapes --name wpp1e-4-adamp5p9 --model.gan_wt 1e-4 --model.beta1 0.5 --model.beta2 0.9


unbuffer python hybrid.py 3dshapes --name wpp1e-4-warm40 --model.gan_wt 1e-4 --model.gan_warm_start 40

unbuffer python hybrid.py 3dshapes --name wpp1e-4-warm20 --model.gan_wt 1e-4 --model.gan_warm_start 20

unbuffer python hybrid.py 3dshapes --name wpp1e-4-warm10 --model.gan_wt 1e-4 --model.gan_warm_start 10

unbuffer python hybrid.py 3dshapes --name wpp1e-4-warm4 --model.gan_wt 1e-4 --model.gan_warm_start 4



unbuffer python hybrid.py factor 3dshapes --name fwae

unbuffer python hybrid.py factor 3dshapes --name fwae-priorp2 --model.reg_prior 0.2

unbuffer python hybrid.py factor 3dshapes --name fwae-priorp4 --model.reg_prior 0.4


unbuffer python hybrid.py factor 3dshapes --name fwae-gan1e-4 --model.gan_wt 1e-4

unbuffer python hybrid.py factor 3dshapes --name fwae-gan1e-4-priorp2 --model.gan_wt 1e-4 --model.reg_prior 0.2

unbuffer python hybrid.py factor 3dshapes --name fwae-gan1e-4-warm10 --model.gan_wt 1e-4 --model.gan_warm_start 10


unbuffer python hybrid.py fvae 3dshapes --name fvae --model.gan_wt 0 --model.latent_reg_wt 1

unbuffer python hybrid.py fvae 3dshapes --name fvae2 --model.gan_wt 0 --model.latent_reg_wt 2

unbuffer python hybrid.py fvae 3dshapes --name fbvaep2 --model.gan_wt 0 --model.latent_reg_wt .2

unbuffer python hybrid.py fvae 3dshapes --name fbvaep1 --model.gan_wt 0 --model.latent_reg_wt .1

unbuffer python hybrid.py fvae 3dshapes --name fbvaep01 --model.gan_wt 0 --model.latent_reg_wt .01



unbuffer python hybrid.py dropin 3dshapes --name dwae1e-5 --model.gan_wt 1e-5

unbuffer python hybrid.py dropin 3dshapes --name dwae1e-4 --model.gan_wt 1e-4

unbuffer python hybrid.py dropin 3dshapes --name dwae1e-3 --model.gan_wt 1e-3

unbuffer python hybrid.py dropin 3dshapes --name dwae1e-4-warm10 --model.gan_wt 1e-4 --model.gan_warm_start 10

unbuffer python hybrid.py dropin 3dshapes --name dwae1e-4-warm4 --model.gan_wt 1e-4 --model.gan_warm_start 4


unbuffer python hybrid.py dropin_vae 3dshapes --name dvae1e-4 --model.gan_wt 1e-4

unbuffer python hybrid.py dropin_vae 3dshapes --name dvae1e-4-warm10 --model.gan_wt 1e-4 --model.gan_warm_start 10

unbuffer python hybrid.py dropin_vae 3dshapes --name dvae1e-4-warm4 --model.gan_wt 1e-4 --model.gan_warm_start 4



unbuffer python hybrid.py dropin_factor 3dshapes --name fdwae1e-4-probp5 --model.gan_wt 1e-4 --model.prob 0.5

unbuffer python hybrid.py dropin_factor 3dshapes --name fdwae1e-4-probp5-priorp2 --model.gan_wt 1e-4 --model.prob 0.5 --model.reg_prior 0.2


unbuffer python hybrid.py dropin_factor 3dshapes --name fdwae1e-4 --model.gan_wt 1e-4

unbuffer python hybrid.py dropin_factor 3dshapes --name fdwae1e-4-priorp2 --model.gan_wt 1e-4 --model.reg_prior 0.2

unbuffer python hybrid.py dropin_factor 3dshapes --name fdwae1e-3 --model.gan_wt 1e-3

unbuffer python hybrid.py dropin_factor 3dshapes --name fdwae1e-3-priorp2 --model.gan_wt 1e-3 --model.reg_prior 0.2

unbuffer python hybrid.py dropin_factor 3dshapes --name fdwae1e-5 --model.gan_wt 1e-5

unbuffer python hybrid.py dropin_factor 3dshapes --name fdwae1e-5-priorp2 --model.gan_wt 1e-5 --model.reg_prior 0.2


unbuffer python hybrid.py dropin_factor 3dshapes --name fdwae1e-4-warm10 --model.gan_wt 1e-4 --model.gan_warm_start 10

unbuffer python hybrid.py dropin_factor 3dshapes --name fdwae1e-4-priorp2-warm10 --model.gan_wt 1e-4 --model.reg_prior 0.2 --model.gan_warm_start 10

unbuffer python hybrid.py dropin_factor 3dshapes --name fdwae1e-4-warm4 --model.gan_wt 1e-4 --model.gan_warm_start 4

unbuffer python hybrid.py dropin_factor 3dshapes --name fdwae1e-4-priorp2-warm4 --model.gan_wt 1e-4 --model.reg_prior 0.2 --model.gan_warm_start 4


unbuffer python hybrid.py dropin_factor_vae 3dshapes --name fdvae1e-4 --model.gan_wt 1e-4

unbuffer python hybrid.py dropin_factor_vae 3dshapes --name fdvae1e-4-priorp2 --model.gan_wt 1e-4 --model.reg_prior 0.2

unbuffer python hybrid.py dropin_factor_vae 3dshapes --name fdvae1e-4-warm10 --model.gan_wt 1e-4 --model.gan_warm_start 10

unbuffer python hybrid.py dropin_factor_vae 3dshapes --name fdvae1e-4-priorp2-warm10 --model.gan_wt 1e-4 --model.reg_prior 0.2 --model.gan_warm_start 10

unbuffer python hybrid.py dropin_factor_vae 3dshapes --name fdvae1e-4-warm4 --model.gan_wt 1e-4 --model.gan_warm_start 4

unbuffer python hybrid.py dropin_factor_vae 3dshapes --name fdvae1e-4-priorp2-warm4 --model.gan_wt 1e-4 --model.reg_prior 0.2 --model.gan_warm_start 4




