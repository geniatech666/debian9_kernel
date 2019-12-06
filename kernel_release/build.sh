#
#!/bin/bash

export ARCH=arm64

export CROSS_COMPILE=$(pwd)/../gcc-linaro-6.3.1-2017.02-x86_64_aarch64-linux-gnu/bin/aarch64-linux-gnu-

echo $ARCH
echo $CROSS_COMPILE
make defconfig distro.config
make -j12 Image.gz dtbs KERNELRELEASE=4.9.56-linaro-lt-qcom
make -j12 modules KERNELRELEASE=4.9.56-linaro-lt-qcom
