DIR=$(dirname $0)

docker build -t pong-svc:dev ${DIR}

if [ -n "" ]; then
  docker tag pong-svc:dev pong-svc:dev
fi
