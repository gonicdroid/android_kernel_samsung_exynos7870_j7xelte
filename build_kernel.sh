#!/bin/bash

export ARCH=arm64
export CROSS_COMPILE=~/toolchains/gcc-linaro-7.5/bin/aarch64-linux-gnu-
export ANDROID_MAJOR_VERSION=o
export ANDROID_PLATFORM_VERSION=8.1.0

make O=./out ARCH=arm64 exynos7870-j7xelte_defconfig

make O=./out ARCH=arm64 CROSS_COMPILE="${CROSS_COMPILE}" -j$(nproc) Image.gz-dtb dtb.img 2>&1 | tee ./out/build.log
