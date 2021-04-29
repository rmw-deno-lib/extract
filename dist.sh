#!/usr/bin/env bash

_DIR=$(cd "$(dirname "$0")"; pwd)
cd $_DIR

npm run prepare
deno bundle --unstable ./lib/index.js > ./mod.js

version="./version.txt"
next=$(cat $version | awk -F. -v OFS=. '{$NF++;print}')
echo $next > $version
echo $next

sed -i "s/@[0-9]\+.[0-9]\+.[0-9]\+\//@$next\//g" readme.make.md
git add -u
git tag $next
