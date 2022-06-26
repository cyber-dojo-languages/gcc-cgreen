#!/bin/bash -Eeu

apk add cmake git
wget https://github.com/cgreen-devs/cgreen/archive/refs/tags/1.5.1.zip
unzip 1.5.1.zip
cd cgreen-1.5.1

make
make test
make install
cd ..

rm -rf cgreen-1.5.1
apk del cmake git


# Issue cgreen-runner ?
# https://github.com/cgreen-devs/cgreen/issues/288