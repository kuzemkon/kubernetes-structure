#!/bin/bash

set -e

# service deployment
kubectl apply -f service/deployment.yaml
kubectl apply -f service/service.yaml

# db deployment
kubectl apply -f db/statefulset.yaml
kubectl apply -f db/service.yaml

# cache deployment
kubectl apply -f cache/statefulset.yaml
kubectl apply -f cache/service.yaml

kubectl apply -f ingress.yaml
