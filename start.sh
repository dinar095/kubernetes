#!/bin/sh
minikube delete
minikube start --driver=virtualbox --addons=metallb
eval $(minikube -p minikube docker-env)
docker build . -t alpine_local
docker build ftps/. -t ftps
docker pull metallb/speaker:v0.8.2     || echo -e "${ERR_MSG}\t✗${END_MSG}"
docker pull metallb/controller:v0.8.2  || echo -e "${ERR_MSG}\t✗${END_MSG}"
docker build nginx/. -t nginx
kubectl apply -f configmap.yaml
#kubectl apply -f nginx/nginx.yaml
kubectl apply -f ftps/ftps.yaml
minikube dashboard
