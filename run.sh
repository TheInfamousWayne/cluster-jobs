
### 70
#
#unbuffer python hybrid.py wae double 3dshapes
#
#unbuffer python hybrid.py wae double 3dshapes --model.lr 2e-3
#
#unbuffer python hybrid.py wae double 3dshapes --model.lr 5e-4
#
#unbuffer python hybrid.py wae double 3dshapes --model.lr 2e-4
#
#unbuffer python hybrid.py wae double 3dshapes --model.lr 1e-4
#
#
#unbuffer python hybrid.py vae double 3dshapes
#
#unbuffer python hybrid.py vae double 3dshapes --model.latent_reg_wt 4
#
#unbuffer python hybrid.py vae double 3dshapes --model.latent_reg_wt 0.25
#
#
#
#unbuffer python hybrid.py fwae double 3dshapes
#
#unbuffer python hybrid.py fvae double 3dshapes
#
#
#
#unbuffer python hybrid.py double 3dshapes
#
#
#
#unbuffer python hybrid.py gan double 3dshapes --model.discriminator.beta1 0
#
#unbuffer python hybrid.py gan double 3dshapes --model.discriminator.lr 1e-3 --model.disc_steps 4
#
#unbuffer python hybrid.py gan double 3dshapes --model.lr 2e-4 --model.discriminator.lr 1e-3
#
#unbuffer python hybrid.py gan double 3dshapes --model.lr 2e-4 --model.discriminator.lr 2e-3
#
#unbuffer python hybrid.py gan double 3dshapes --model.discriminator.lr 8e-3
#
#unbuffer python hybrid.py gan double 3dshapes --model.optim_type rmsprop


### 71

#unbuffer python hybrid.py fvae double 3dshapes

### 76

#unbuffer python hybrid.py wae large-double celeba
#
#unbuffer python hybrid.py vae large-double celeba
#
#unbuffer python hybrid.py fwae large-double celeba
#
#unbuffer python hybrid.py fvae large-double celeba
#
#unbuffer python hybrid.py gan large-double celeba
#
#unbuffer python hybrid.py large-double celeba
#
#unbuffer python hybrid.py dwae large-double celeba
#
#unbuffer python hybrid.py dvae large-double celeba
#
#unbuffer python hybrid.py fdwae large-double celeba
#
#unbuffer python hybrid.py fdvae large-double celeba




### 77


#unbuffer python hybrid.py gan double 3dshapes
#
#unbuffer python hybrid.py gan double 3dshapes --model.discriminator.beta1 0 --model.lr 2e-4 --model.discriminator.lr 1e-3
#
#unbuffer python hybrid.py gan double 3dshapes --model.discriminator.lr _x_ --model.disc_steps 4
#
#unbuffer python hybrid.py gan double 3dshapes --model.optim_type rmsprop --model.discriminator.lr _x_ --model.disc_steps 4
#
#unbuffer python hybrid.py gan double 3dshapes --model.optim_type rmsprop --model.lr 2e-4 --model.discriminator.lr _x_ --model.disc_steps 4
#
#unbuffer python hybrid.py gan double 3dshapes --model.discriminator.lr _x_ --model.disc_steps 4
#
#unbuffer python hybrid.py gan double 3dshapes --model.lr 2e-4 --model.discriminator.lr _x_ --model.disc_steps 4
#
#
#
#unbuffer python hybrid.py wae double 3dshapes
#
#
#unbuffer python hybrid.py wae double 3dshapes --model.nonlin prelu
#
#unbuffer python hybrid.py wae double 3dshapes --model.nonlin relu
#
#unbuffer python hybrid.py wae double 3dshapes --model.up_type nearest
#
#unbuffer python hybrid.py wae double 3dshapes --model.down_type conv
#
#unbuffer python hybrid.py wae double 3dshapes --model.down_type conv --model.up_type conv
#
#unbuffer python hybrid.py wae double 3dshapes --model.norm_type batch
#
#unbuffer python hybrid.py wae double 3dshapes --model.lr 5e-4
#
#unbuffer python hybrid.py wae double 3dshapes --model.beta1 0.5 --model.beta2 0.9
#
#unbuffer python hybrid.py wae double 3dshapes --model.beta1 0 --model.beta2 0.9
#
#
#unbuffer python hybrid.py wae double 3dshapes --model.weight_decay 1e-3
#
#unbuffer python hybrid.py wae double 3dshapes --model.weight_decay 1e-4
#
#unbuffer python hybrid.py wae double 3dshapes --model.weight_decay 1e-5
#
#unbuffer python hybrid.py wae double 3dshapes --model.weight_decay 1e-6
#
#
#
#unbuffer python hybrid.py vae double 3dshapes
#
#unbuffer python hybrid.py vae double 3dshapes --model.latent_reg_wt 4
#
#unbuffer python hybrid.py vae double 3dshapes --model.latent_reg_wt 0.25
#
#
#
#unbuffer python hybrid.py double 3dshapes
#
#unbuffer python hybrid.py double 3dshapes --model.gan_wt 1e-5
#
#unbuffer python hybrid.py double 3dshapes --model.gan_wt 1e-3
#
#
#unbuffer python hybrid.py double 3dshapes
#
#unbuffer python hybrid.py schenc double 3dshapes
#
#unbuffer python hybrid.py schenc double 3dshapes --model.gan_warm_start 20
#
#unbuffer python hybrid.py double 3dshapes --model.gan_warm_start 40
#
#unbuffer python hybrid.py double 3dshapes --model.gan_warm_start 20
#
#unbuffer python hybrid.py double 3dshapes --model.gan_warm_start 10
#
#
#unbuffer python hybrid.py fwae double 3dshapes
#
#unbuffer python hybrid.py fwae double 3dshapes --model.reg_prior 0.2
#
#unbuffer python hybrid.py fwae double 3dshapes --model.reg_prior 0.1
#
#unbuffer python hybrid.py fwae double 3dshapes --model.gan_wt 1e-4
#
#
#unbuffer python hybrid.py fvae double 3dshapes
#
#unbuffer python hybrid.py fvae double 3dshapes --model.reg_prior 0.2
#
#unbuffer python hybrid.py fvae double 3dshapes --model.reg_prior 0.1
#
#unbuffer python hybrid.py fvae double 3dshapes --model.gan_wt 1e-4
#
#
#
#unbuffer python hybrid.py dwae double 3dshapes
#
#unbuffer python hybrid.py dwae double 3dshapes --model.gan_wt 1e-3
#
#unbuffer python hybrid.py schenc dwae double 3dshapes
#
#unbuffer python hybrid.py dwae double 3dshapes --model.gan_warm_start 20
#
#
#unbuffer python hybrid.py dvae double 3dshapes
#
#
#
#unbuffer python hybrid.py fdwae double 3dshapes
#
#unbuffer python hybrid.py fdwae double 3dshapes --model.gan_wt 1e-3
#
#unbuffer python hybrid.py fdwae double 3dshapes --model.gan_warm_start 20
#
#
#unbuffer python hybrid.py fdvae double 3dshapes
#
#unbuffer python hybrid.py fdvae double 3dshapes --model.gan_wt 1e-3
#
#unbuffer python hybrid.py fdvae double 3dshapes --model.gan_warm_start 20


### 78

#unbuffer python hybrid.py wae double cr-3dshapes
#
#unbuffer python hybrid.py vae double cr-3dshapes
#
#unbuffer python hybrid.py fwae double cr-3dshapes
#
#unbuffer python hybrid.py fvae double cr-3dshapes
#
#unbuffer python hybrid.py gan double cr-3dshapes
#
#unbuffer python hybrid.py double cr-3dshapes
#
#unbuffer python hybrid.py dwae double cr-3dshapes
#
#unbuffer python hybrid.py dvae double cr-3dshapes
#
#unbuffer python hybrid.py fdwae double cr-3dshapes
#
#unbuffer python hybrid.py fdvae double cr-3dshapes


#unbuffer python hybrid.py gan double cr-3dshapes --model.discriminator.lr _x_ --model.disc_steps 4
#
#unbuffer python hybrid.py gan double cr-3dshapes --model.discriminator.lr _x_ --model.disc_steps 4 --model.lr 2e-4
#
#unbuffer python hybrid.py gan double 3dshapes --model.discriminator.lr _x_ --model.disc_steps 5
#
#unbuffer python hybrid.py gan double 3dshapes --model.discriminator.lr _x_ --model.disc_steps 4
#
#unbuffer python hybrid.py gan double 3dshapes --model.discriminator.lr _x_ --model.disc_steps 4


### 82

#unbuffer python hybrid.py wae double cr-3dshapes
#
#unbuffer python hybrid.py vae double cr-3dshapes
#
#unbuffer python hybrid.py fwae double cr-3dshapes
#
#unbuffer python hybrid.py fvae double cr-3dshapes
#
#unbuffer python hybrid.py gan double cr-3dshapes
#
#unbuffer python hybrid.py double cr-3dshapes
#
#unbuffer python hybrid.py dwae double cr-3dshapes
#
#unbuffer python hybrid.py dvae double cr-3dshapes
#
#unbuffer python hybrid.py fdwae double cr-3dshapes
#
#unbuffer python hybrid.py fdvae double cr-3dshapes
#
#unbuffer python hybrid.py fdwae double cr-3dshapes --model.prob 0.5
#
#unbuffer python hybrid.py fdvae double cr-3dshapes --model.prob 0.5
#
#
#unbuffer python hybrid.py fdwae double 3dshapes --model.prob 0.5
#
#unbuffer python hybrid.py fdvae double 3dshapes --model.prob 0.5


### 84

#unbuffer python hybrid.py wae large-double celeba
#
#unbuffer python hybrid.py vae large-double celeba
#
#unbuffer python hybrid.py fwae large-double celeba
#
#unbuffer python hybrid.py fvae large-double celeba
#
#unbuffer python hybrid.py gan large-double celeba
#
#unbuffer python hybrid.py large-double celeba
#
#unbuffer python hybrid.py dwae large-double celeba
#
#unbuffer python hybrid.py dvae large-double celeba
#
#unbuffer python hybrid.py fdwae large-double celeba
#
#unbuffer python hybrid.py fdvae large-double celeba
#
#unbuffer python hybrid.py fdwae large-double celeba --model.prob 0.5
#
#unbuffer python hybrid.py fdvae large-double celeba --model.prob 0.5


### 85

#unbuffer python hybrid.py gan large-double celeba
#
#
#unbuffer python hybrid.py gan double cr-3dshapes
#
#unbuffer python hybrid.py gan double 3dshapes
#
#unbuffer python hybrid.py gan double 3dshapes --model.disc_steps 8
#
#unbuffer python hybrid.py gan double 3dshapes --model.scheduler_type step --model.scheduler_step 80
#
#unbuffer python hybrid.py gan double 3dshapes --model.latent_dim 32
#
#
#unbuffer python hybrid.py gan double 3dshapes --model.up_type nearest
#
#unbuffer python hybrid.py gan double 3dshapes --model.down_type conv --model.up_type conv
#
#unbuffer python hybrid.py gan double 3dshapes --model.generator.down_type conv --model.generator.up_type conv
#
#unbuffer python hybrid.py gan double 3dshapes --model.generator.down_type conv --model.generator.up_type conv
#
#unbuffer python hybrid.py gan double 3dshapes --model.generator.down_type conv --model.generator.up_type conv --model.generator.squeeze True --model.generator.internal_channels [512,512,256,256,256]
#
#unbuffer python hybrid.py gan double 3dshapes --model.generator.squeeze True --model.generator.internal_channels [512,512,256,256,256]
#
#unbuffer python hybrid.py gan double 3dshapes --model.residual True


### 86

#unbuffer python hybrid.py wae double 3dshapes --model.generator.squeeze True --model.generator.internal_channels [512,512,256,256,256]
#
#unbuffer python hybrid.py wae double 3dshapes --model.squeeze True --model.internal_channels [256,256,256,512,512] --model.generator.internal_channels [512,512,256,256,256]


### 87

#unbuffer python hybrid.py dwae double 3dshapes --model.prob 0.5
#
#unbuffer python hybrid.py dvae double 3dshapes --model.prob 0.5


### 88

#unbuffer python hybrid.py vae double 3dshapes  --model.up_type nearest
#
#unbuffer python hybrid.py fwae double 3dshapes  --model.up_type nearest
#
#unbuffer python hybrid.py fvae double 3dshapes --model.up_type nearest
#
#unbuffer python hybrid.py double 3dshapes --model.up_type nearest
#
#unbuffer python hybrid.py dwae double 3dshapes --model.up_type nearest
#
#unbuffer python hybrid.py fdwae double 3dshapes --model.up_type nearest

### 89

#unbuffer python hybrid.py vae double 3dshapes  --model.up_type nearest --model.latent_reg_wt 2
#
#unbuffer python hybrid.py vae double 3dshapes  --model.up_type nearest --model.latent_reg_wt 4
#
#unbuffer python hybrid.py vae double 3dshapes  --model.up_type nearest --model.latent_reg_wt 8


### 92


#unbuffer python hybrid.py vae adain-dec 3dshapes
#
#unbuffer python hybrid.py fwae adain-dec 3dshapes
#
#unbuffer python hybrid.py fvae adain-dec 3dshapes
#
#unbuffer python hybrid.py adain-dec 3dshapes
#
#unbuffer python hybrid.py dwae adain-dec 3dshapes
#
#unbuffer python hybrid.py fdwae adain-dec 3dshapes

#unbuffer python hybrid.py gan adain-dec 3dshapes


### 94

#unbuffer python hybrid.py vae double 3dshapes
#
#unbuffer python hybrid.py fwae double 3dshapes
#
#unbuffer python hybrid.py fvae double 3dshapes
#
#unbuffer python hybrid.py double 3dshapes
#
#unbuffer python hybrid.py dwae double 3dshapes
#
#unbuffer python hybrid.py fdwae double 3dshapes
#
#unbuffer python hybrid.py gan double 3dshapes



### 95

#unbuffer python hybrid.py vae double 3dshapes --model.latent_dim 8
#
#unbuffer python hybrid.py fwae double 3dshapes  --model.latent_dim 8
#
#unbuffer python hybrid.py fvae double 3dshapes  --model.latent_dim 8
#
#unbuffer python hybrid.py double 3dshapes  --model.latent_dim 8
#
#unbuffer python hybrid.py dwae double 3dshapes --model.latent_dim 8
#
#unbuffer python hybrid.py fdwae double 3dshapes --model.latent_dim 8
#
#unbuffer python hybrid.py gan double 3dshapes --model.latent_dim 8


### 96

#unbuffer python hybrid.py vae double 3dshapes --model.latent_dim 32
#
#unbuffer python hybrid.py fwae double 3dshapes  --model.latent_dim 32
#
#unbuffer python hybrid.py fvae double 3dshapes  --model.latent_dim 32
#
#unbuffer python hybrid.py double 3dshapes  --model.latent_dim 32
#
#unbuffer python hybrid.py dwae double 3dshapes --model.latent_dim 32
#
#unbuffer python hybrid.py fdwae double 3dshapes --model.latent_dim 32
#
#unbuffer python hybrid.py gan double 3dshapes --model.latent_dim 32

### 97

#unbuffer python hybrid.py vae adain-dec 3dshapes
#
#unbuffer python hybrid.py fwae adain-dec 3dshapes
#
#unbuffer python hybrid.py fvae adain-dec 3dshapes
#
#unbuffer python hybrid.py adain-dec 3dshapes
#
#unbuffer python hybrid.py dwae adain-dec 3dshapes
#
#unbuffer python hybrid.py fdwae adain-dec 3dshapes
#
#unbuffer python hybrid.py gan adain-dec 3dshapes

### 98

#unbuffer python hybrid.py double 3dshapes  --model.latent_dim 32

### 99

#unbuffer python hybrid.py wae adain-dec 3dshapes

### 100

#unbuffer python hybrid.py wae adain-dec 3dshapes --model.latent_dim 8
#
#unbuffer python hybrid.py vae adain-dec 3dshapes --model.latent_dim 8
#
#unbuffer python hybrid.py fwae adain-dec 3dshapes --model.latent_dim 8
#
#unbuffer python hybrid.py fvae adain-dec 3dshapes --model.latent_dim 8
#
#unbuffer python hybrid.py adain-dec 3dshapes --model.latent_dim 8
#
#unbuffer python hybrid.py dwae adain-dec 3dshapes --model.latent_dim 8
#
#unbuffer python hybrid.py dwae adain-dec 3dshapes --model.prob 0.5 --model.latent_dim 8
#
#unbuffer python hybrid.py dvae adain-dec 3dshapes --model.latent_dim 8
#
#unbuffer python hybrid.py dvae adain-dec 3dshapes --model.prob 0.5 --model.latent_dim 8
#
#unbuffer python hybrid.py fdwae adain-dec 3dshapes --model.latent_dim 8
#
#unbuffer python hybrid.py fdwae adain-dec 3dshapes --model.prob 0.5 --model.latent_dim 8
#
#unbuffer python hybrid.py gan adain-dec 3dshapes --model.latent_dim 8

### 101

#unbuffer python hybrid.py dwae adain-dec 3dshapes --model.prob 0.5
#
#unbuffer python hybrid.py dvae adain-dec 3dshapes
#
#unbuffer python hybrid.py dvae adain-dec 3dshapes --model.prob 0.5
#
#unbuffer python hybrid.py fdwae adain-dec 3dshapes --model.prob 0.5

### 102

#unbuffer python hybrid.py wae adain-dec 3dshapes --model.generator.adain_latent_dim 16 --model.generator.splits 4
#
#unbuffer python hybrid.py vae adain-dec 3dshapes --model.generator.adain_latent_dim 16 --model.generator.splits 4
#
#unbuffer python hybrid.py fwae adain-dec 3dshapes --model.generator.adain_latent_dim 16 --model.generator.splits 4
#
#unbuffer python hybrid.py fvae adain-dec 3dshapes --model.generator.adain_latent_dim 16 --model.generator.splits 4
#
#unbuffer python hybrid.py adain-dec 3dshapes --model.generator.adain_latent_dim 16 --model.generator.splits 4
#
#unbuffer python hybrid.py dwae adain-dec 3dshapes --model.generator.adain_latent_dim 16 --model.generator.splits 4
#
#unbuffer python hybrid.py dwae adain-dec 3dshapes --model.prob 0.5 --model.generator.adain_latent_dim 16 --model.generator.splits 4
#
#unbuffer python hybrid.py dvae adain-dec 3dshapes --model.generator.adain_latent_dim 16 --model.generator.splits 4
#
#unbuffer python hybrid.py dvae adain-dec 3dshapes --model.prob 0.5 --model.generator.adain_latent_dim 16 --model.generator.splits 4
#
#unbuffer python hybrid.py fdwae adain-dec 3dshapes --model.generator.adain_latent_dim 16 --model.generator.splits 4
#
#unbuffer python hybrid.py fdwae adain-dec 3dshapes --model.prob 0.5 --model.generator.adain_latent_dim 16 --model.generator.splits 4
#
#unbuffer python hybrid.py gan adain-dec 3dshapes --model.generator.adain_latent_dim 16 --model.generator.splits 4

### 103

#unbuffer python hybrid.py gan adain-dec 3dshapes --model.generator.adain_latent_dim 16 --model.generator.splits 4





