#!/bin/bash

set -e

# microservice 1 deployment

# service deployment
kubectl apply -f microservice1/service/deployment.yaml
kubectl apply -f microservice1/service/service.yaml

# db deployment
kubectl apply -f microservice1/db/statefulset.yaml
kubectl apply -f microservice1/db/service.yaml

# cache deployment
kubectl apply -f microservice1/cache/statefulset.yaml
kubectl apply -f microservice1/cache/service.yaml


# microservice 2 deployment

# service deployment
kubectl apply -f microservice2/service/deployment.yaml
kubectl apply -f microservice2/service/service.yaml

# db deployment
kubectl apply -f microservice2/db/statefulset.yaml
kubectl apply -f microservice2/db/service.yaml

# cache deployment
kubectl apply -f microservice2/cache/statefulset.yaml
kubectl apply -f microservice2/cache/service.yaml


# microservice 3 deployment

# service deployment
kubectl apply -f microservice3/service/deployment.yaml
kubectl apply -f microservice3/service/service.yaml

# db deployment
kubectl apply -f microservice3/db/statefulset.yaml
kubectl apply -f microservice3/db/service.yaml

# cache deployment
kubectl apply -f microservice3/cache/statefulset.yaml
kubectl apply -f microservice3/cache/service.yaml


kubectl apply -f ingress.yaml
