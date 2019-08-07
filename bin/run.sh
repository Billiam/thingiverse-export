#!/usr/bin/env bash
set -ev

if [[ "$(docker images -q thingiverse 2> /dev/null)" == "" ]]; then
  docker build . -t thingiverse
fi

docker run -it --rm \
-v "$(pwd):/usr/src/tv" \
thingiverse "$@"
