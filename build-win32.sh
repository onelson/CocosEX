#!/bin/bash

set -e

export PATH=/mingw64/bin:${PATH}
export CMAKE_BUILD_TYPE=Release
export CMAKE_CXX_COMPILER=/mingw64/bin/g++.exe
export CMAKE_C_COMPILER=/mingw64/bin/gcc.exe
export CMAKE_MAKE_PROGRAM=/mingw64/bin/mingw32-make.exe
export CMAKE_AR=/mingw64/bin/ar.exe
export CMAKE_EXPORT_COMPILE_COMMANDS=ON

mkdir -p build/
cd build

cmake -G "MSYS Makefiles" ../ \
  -DCMAKE_BUILD_TYPE=Release \
  -DDEBUG_MODE=OFF \
  -DCMAKE_CXX_COMPILER=/mingw64/bin/g++.exe \
  -DCMAKE_C_COMPILER=/mingw64/bin/gcc.exe \
  -DCMAKE_MAKE_PROGRAM=/mingw64/bin/mingw32-make.exe \
  -DCMAKE_AR=/mingw64/bin/ar.exe \
  -DCMAKE_EXPORT_COMPILE_COMMANDS=ON

mingw32-make.exe

rm -rf release/omnlabs-win32
mkdir -p release/omnlabs-win32
cp -r bin/* release/omnlabs-win32/

