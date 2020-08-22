#!/bin/bash

DIR=$(dirname $1)
NAME=$(basename $1)

docker build -t ${NAME}:dev ${DIR}

if [ -n "" ]; then
  docker tag ${NAME}:dev ${NAME}:dev
fi
