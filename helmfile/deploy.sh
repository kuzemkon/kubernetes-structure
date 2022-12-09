#!/bin/bash

set -e

helm upgrade -f microservice1/values.yaml microservice1 ./microservice1

helm upgrade -f microservice2/values.yaml microservice2 ./microservice2

helm upgrade -f microservice3/values.yaml microservice2 ./microservice3

# install nginx load balancer
helm repo add ingress-nginx https://kubernetes.github.io/ingress-nginx

helm install -f nginx-values.yaml nginx ingress-nginx/ingress-nginx
