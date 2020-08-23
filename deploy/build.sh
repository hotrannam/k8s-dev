#!/bin/bash

set -e

DIR="$1"
DEPLOYDIR="$(dirname $0)"
TARGETDIR="${DEPLOYDIR}/../${DIR}"
DOCKERFILE="${TARGETDIR}/Dockerfile"

if [ -f "$DOCKERFILE" ]; then
  docker build -t ${DIR}:dev ${TARGETDIR}

  if [ -n "" ]; then
    docker tag ${DIR}:dev ${DIR}:dev
  fi
fi
