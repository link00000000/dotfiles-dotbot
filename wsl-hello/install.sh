#!/bin/sh

mkdir -p ./release

wsl_hello_url=http://github.com/nullpo-head/WSL-Hello-sudo/releases/latest/download/release.tar.gz
curl -Ls $wsl_hello_url | tar xz --strip-components=1 -C ./release

cd ./release
./install.sh

rm -rf ./release
