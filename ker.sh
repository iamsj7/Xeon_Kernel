#!/bin/bash
#
# Script to compile RebornKernel for lettuce
#
export ARCH=arm
export SUBARCH=arm
export CROSS_COMPILE=$(pwd)/gcc/bin/arm-eabi-

git clone -b master https://github.com/dev-harsh1998/GCC_BUILDS gcc

rm -rf out
mkdir -p out
make O=out caesium_defconfig
make O=out -j16
