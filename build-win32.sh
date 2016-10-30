#!/bin/sh

mkdir -p build/
cd build
cmake -G "MSYS Makefiles" ../ -DCMAKE_BUILD_TYPE=Release
make
mkdir omnlabs-win32
mv bin omnlabs-win32/omnlabs-win32

