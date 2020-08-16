DIR=$(dirname $0)

docker build -t ping-svc:dev ${DIR}

if [ -n "" ]; then
  docker tag ping-svc:dev ping-svc:dev
fi
