#!/bin/bash

cd "$(dirname "$(realpath "$0")")/../" || exit 255

echo "flavours=[$(find ./images/ -mindepth 1 -maxdepth 1 -type d | cut -f3 -d/ | xargs -I% echo '"%"' | tr '\n' ',' | perl -pe 's/,$//g')]"
