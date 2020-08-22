#!/bin/bash

set -e

DIR=$1

if [ -z "$DIR" ]; then
  echo "Usage: $(basename $0) dir" >&2
  exit 1
fi

DIR="$(dirname $0)/../${DIR}"

cd "${DIR}" && sh build.sh "${DIR}"

cd "deploy" && kubectl delete -f .
