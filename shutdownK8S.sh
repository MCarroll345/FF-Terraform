#!/bin/bash

# Shutdown K8S for FF
echo "K8S for FF shutdown"
aws eks update-kubeconfig --region eu-west-1 --name FitFinder
kubectl delete --all svc
kubectl delete --all deployments