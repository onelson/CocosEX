#!/usr/bin/env bash

# http://discuss.cocos2d-x.org/t/guide-compiling-cocos2d-x-with-clion/22541/23 hacking together windows compat

pacman -Sy --noconfirm --force \
    git \
    mingw-w64-x86_64-cmake \
    mingw-w64-x86_64-toolchain \
    mingw-w64-x86_64-gcc \
    mingw-w64-x86_64-gdb \
    mingw-w64-x86_64-libvorbis \
    mingw-w64-x86_64-openal \
    mingw-w64-x86_64-openssl \
    mingw-w64-x86_64-glew \
    mingw-w64-x86_64-glfw \
    mingw-w64-x86_64-pkg-config \
    mingw-w64-x86_64-freetype \
    mingw-w64-x86_64-mpg123 \
    mingw-w64-x86_64-glew \
    mingw-w64-x86_64-libwebp \
    mingw-w64-x86_64-libtiff \
    mingw-w64-x86_64-libjpeg \
    mingw-w64-x86_64-libpng \
    mingw-w64-x86_64-curl \
    mingw-w64-x86_64-zlib

mkdir $TMP/cocos2dx_installation
cd $TMP/cocos2dx_installation
git clone https://github.com/warmcat/libwebsockets.git libwebsockets
cd libwebsockets
git checkout v2.0-stable
mkdir _build
cd _build
cmake -DLWS_WITHOUT_TESTAPPS=ON -DLWS_USE_BUNDLED_ZLIB=OFF -G "MinGW Makefiles" ..
cmake -DLWS_WITHOUT_TESTAPPS=ON -DLWS_USE_BUNDLED_ZLIB=OFF -G "MinGW Makefiles" ..
mingw32-make
mingw32-make install DESTDIR=./install
mkdir /mingw64/lib/cmake/libwebsockets
cp ./install/Program\ Files\ \(x86\)/libwebsockets/lib/*     /mingw64/lib
cp ./install/Program\ Files\ \(x86\)/libwebsockets/include/* /mingw64/include
cp ./install/Program\ Files\ \(x86\)/libwebsockets/bin/*     /mingw64/bin
cp ./install/Program\ Files\ \(x86\)/libwebsockets/cmake/*   /mingw64/lib/cmake
cp ./install/Program\ Files\ \(x86\)/libwebsockets/cmake/*   /mingw64/lib/cmake/libwebsockets
cd ../..
git clone https://github.com/slembcke/Chipmunk2D.git Chipmunk2D
cd Chipmunk2D
git checkout tags/Chipmunk-7.0.1
sed -i "s/\#include <sys\/sysctl.h>//g" src/cpHastySpace.c
mkdir _build
cd _build
cmake -DBUILD_DEMOS=OFF -DBUILD_SHARED=ON -DBUILD_STATIC=ON -G "MinGW Makefiles" ..
cmake -DBUILD_DEMOS=OFF -DBUILD_SHARED=ON -DBUILD_STATIC=ON -G "MinGW Makefiles" ..
mingw32-make
mingw32-make install DESTDIR=./install
cp ./install/Program\ Files\ \(x86\)/chipmunk/lib/*     /mingw64/lib
cp -r ./install/Program\ Files\ \(x86\)/chipmunk/include/* /mingw64/include
cp ./install/Program\ Files\ \(x86\)/chipmunk/bin/*     /mingw64/bin
cd ../../..
rm -rf $TMP/cocos2dx_installation
exit