#!/usr/bin/env bash
set -Eeu

readonly CGREEN_VERSION=1.7.0

apk add binutils-dev
apk add cmake wget unzip
wget "https://github.com/cgreen-devs/cgreen/archive/refs/tags/${CGREEN_VERSION}.zip"
unzip "${CGREEN_VERSION}.zip"
cd "cgreen-${CGREEN_VERSION}"

make
make install
cd ..

rm -rf "cgreen-${CGREEN_VERSION}"
apk del cmake wget unzip
