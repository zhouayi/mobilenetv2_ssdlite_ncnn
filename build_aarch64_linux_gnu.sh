#!/bin/bash
set -e

export PATH=$HOME/home/zhouying/Firefly-RK3308/prebuilts/gcc/linux-x86/aarch64/gcc-linaro-6.3.1-2017.05-x86_64_aarch64-linux-gnu/bin:$PATH

mkdir -p build-aarch64-linux-gnu
rm -rf build-aarch64-linux-gnu/*
cd build-aarch64-linux-gnu

cmake -DCMAKE_TOOLCHAIN_FILE=../cmake/aarch64-linux-gnu.toolchain.cmake \
-DNCNN_VULKAN=OFF \
-DCMAKE_BUILD_TYPE=Release \
-DBUILD_SYSTEM=aarch64-linux-gnu \
..

make -j8
