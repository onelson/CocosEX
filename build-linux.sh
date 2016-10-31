#!/bin/bash

set -e 

mkdir -p build/
cd build
cmake ../ -DCMAKE_BUILD_TYPE=Release
make
rm -rf release/omnlabs-linux
mkdir -p release/omnlabs-linux
cp -r bin/* release/omnlabs-linux/
