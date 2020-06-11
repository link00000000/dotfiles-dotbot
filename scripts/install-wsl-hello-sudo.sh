#!/bin/sh

cd /tmp

wget http://github.com/nullpo-head/WSL-Hello-sudo/releases/latest/download/release.tar.gz
tar xvf release.tar.gz
cd release
./install.sh

rm -rf ./release ./release.tar.gz
