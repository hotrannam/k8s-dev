#!/bin/bash

set -e

DIR="$1"
DEPLOYDIR="$(dirname $0)"

if [ -z "$DIR" ]; then
  echo "Usage: $(basename $0) dir" >&2
  exit 1
fi

sh "${DEPLOYDIR}/build.sh" "${DIR}"

cd "${DEPLOYDIR}/../${DIR}/deploy" && kubectl apply -f .
