#!/bin/sh

mkdir -p build/
cd build
cmake ../ -DCMAKE_BUILD_TYPE=Release
make
mkdir omnlabs-linux
mv bin omnlabs-linux/omnlabs-linux

