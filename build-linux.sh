#!/bin/bash

set -e 
rm -rf build/release/omnlabs-linux
mkdir -p build/release/omnlabs-linux
cd build
cmake ../ -DCMAKE_BUILD_TYPE=Release
make
cp -r bin/* release/omnlabs-linux/
