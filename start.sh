#!/bin/sh
minikube delete
minikube start --driver=virtualbox --addons=metallb
eval $(minikube -p minikube docker-env)
docker build . -t alpine_local
docker build sql/. -t sql
docker build ftps/. -t ftps
docker build nginx/. -t nginx
docker build wordpress/. -t wordpress
docker build phpmyadmin/. -t phpmyadmin
docker pull metallb/speaker:v0.8.2
docker pull metallb/controller:v0.8.2
kubectl apply -f configmap.yaml
kubectl apply -f nginx/srcs/nginx.yaml
kubectl apply -f ftps/srcs/ftps.yaml
kubectl apply -f wordpress/srcs/wp.yaml
kubectl apply -f phpmyadmin/srcs/php.yaml
minikube dashboard
