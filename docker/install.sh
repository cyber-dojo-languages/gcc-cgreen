#!/usr/bin/env bash
set -Eeu

apk add binutils-dev
apk add cmake wget unzip
wget https://github.com/cgreen-devs/cgreen/archive/refs/tags/1.6.3.zip
unzip 1.6.3.zip
cd cgreen-1.6.3

make
make install
cd ..

rm -rf cgreen-1.6.3
apk del cmake wget unzip
