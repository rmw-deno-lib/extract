#!/usr/bin/env bash

_DIR=$(cd "$(dirname "$0")"; pwd)
cd $_DIR
npm run prepare
deno bundle --unstable ./lib/index.js > ./mod.js

