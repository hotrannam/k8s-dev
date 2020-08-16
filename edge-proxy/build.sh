DIR=$(dirname $0)

docker build -t edge-proxy:dev ${DIR}

if [ -n "" ]; then
  docker tag edge-proxy:dev edge-proxy:dev
fi
