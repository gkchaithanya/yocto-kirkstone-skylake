# yocto-kirkstone-skylake
This Repository is to build core-image-minimal Linux image for skylake Machine configuration using Yocto

Building the Image:
1. Clone this repository git clone https://github.com/gkchaithanya/yocto-kirkstone-skylake.git
2. Run ./yocto_setup.sh to clone poky, meta-intel layers.
3. source poky/oe-init-build-env to select the configurations from meta-mylayer
4. cd build/ and bitbake core-image-minimal to build image.
