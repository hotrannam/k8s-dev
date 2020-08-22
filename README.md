## The tools

We will use `Minikube` for local development and deployment. To start Minikube

```minikube start --vm=true```

and then hook up the Minikube Docker daemon for local Docker images once Minikube started.

```eval $(minikube docker-env)```

## Use Envoy as an edge proxy

Deploy `ping` and `pong` services

```
./deploy/up.sh ping-svc
./deploy/up.sh pong-svc
```

and the `edge-proxy` to Minikube

```./deploy/up.sh edge-proxy```

Now check the edge proxy should work

```
curl $(minikube service --url edge-proxy)/ping
curl $(minikube service --url edge-proxy)/pong
```
