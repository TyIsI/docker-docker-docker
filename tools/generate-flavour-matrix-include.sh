#!/bin/bash

cd "$(dirname "$(realpath "$0")")/../" || exit 255

echo "flavour-matrix={\\\"include\\\":[$(find ./images/ -mindepth 1 -maxdepth 1 -type d | cut -f3 -d/ | xargs -I% echo '\"%\"' | tr ' ' ',')]}"
