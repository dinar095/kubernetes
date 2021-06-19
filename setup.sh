#!/bin/sh
minikube delete
minikube start --driver=virtualbox --addons=metallb
#REM @FOR /f "tokens=*" %i IN ('minikube -p minikube docker-env') DO @%i
eval $(minikube -p minikube docker-env)
docker build srcs/. -t alpine_local
docker build srcs/sql/. -t sql
docker build srcs/ftps/. -t ftps_img
docker build srcs/nginx/. -t nginx-img
docker build srcs/wordpress/. -t wordpress
docker build srcs/phpmyadmin/. -t phpmyadmin
docker build srcs/influxdb/. -t influxdb
docker build srcs/grafana/. -t grafana
docker pull metallb/speaker:v0.8.2
docker pull metallb/controller:v0.8.2
kubectl apply -f srcs/configmap.yaml
kubectl apply -f srcs/nginx/srcs/nginx.yaml
kubectl apply -f srcs/sql/srcs/mysql.yaml
kubectl apply -f srcs/ftps/srcs/ftps.yaml
kubectl apply -f srcs/wordpress/srcs/wp.yaml
kubectl apply -f srcs/phpmyadmin/srcs/php.yaml
kubectl apply -f srcs/influxdb/srcs/influx.yaml
kubectl apply -f srcs/grafana/srcs/grafana.yaml
minikube dashboard

#kubectl delete -f configmap.yaml
#kubectl delete -f nginx/srcs/nginx.yaml
#kubectl delete -f ftps/srcs/ftps.yaml
#kubectl delete -f srcs/wordpress/srcs/wp.yaml
#kubectl delete -f phpmyadmin/srcs/php.yaml
#kubectl delete -f srcs/grafana/srcs/grafana.yaml
docker build srcs/ftps/. -t ftps_img
kubectl delete -f srcs/ftps/srcs/ftps.yaml