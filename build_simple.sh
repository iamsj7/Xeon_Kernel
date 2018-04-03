#!/bin/bash
#
# Script to compile RebornKernel Image for lettuce
#
export ARCH=arm
export SUBARCH=arm
export CROSS_COMPILE=$(pwd)/linaro/bin/arm-eabi--

git clone https://github.com/dev-harsh1998/GCC_BUILDS linaro

rm -rf out
mkdir -p out
make O=out xeon_jalebi_defconfig
make O=out -j16
