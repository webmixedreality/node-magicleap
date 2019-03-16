#!/bin/bash

export toolchain="/home/chris/github/the-toolchain"

git checkout base-11.6.0
./configure
make 
cp out/Release/torque .

git checkout 11.6.0

rm -Rf out
./android-configure
make 

rm -f libnode.a
"$toolchain/bin/aarch64-linux-android-ar" -M <libnode.mri
