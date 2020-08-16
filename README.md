## Deploy Envoy as an edge proxy

We will use `Minikube` and `Envoy` for this demo.

To start Minikube

```minikube start --vm=true```

and then hook up the Minikube Docker daemon for local Docker images once Minikube started.

```eval $(minikube docker-env)```

Deploy `ping` and `pong` services

```
bash up.sh ping-svc
bash up.sh pong-svc
```

and the `edge-proxy` to Minikube

```bash up.sh edge-proxy```

Now check the edge proxy should work

```
curl $(minikube service --url edge-proxy)/ping
curl $(minikube service --url edge-proxy)/pong
```
