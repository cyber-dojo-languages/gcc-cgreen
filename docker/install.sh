#!/bin/bash -Eeu

apk add binutils-dev
apk add cmake wget unzip
wget https://github.com/cgreen-devs/cgreen/archive/refs/tags/1.5.1.zip
unzip 1.5.1.zip
cd cgreen-1.5.1

make
make install
cd ..

rm -rf cgreen-1.5.1
apk del cmake wget unzip
