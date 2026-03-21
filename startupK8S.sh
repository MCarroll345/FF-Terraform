#!/bin/bash

# FF K8S script startup
echo "K8S for FF"
cd 1-FF-Recom/k8s-tf
terraform init
terraform apply -auto-approve
cd ../../2-FF-Clothes/k8s-tf
terraform init
terraform apply -auto-approve
cd ../../3-FF-ML/k8s-tf
terraform init
terraform apply -auto-approve
cd ../../4-FF-User/k8s-tf
terraform init
terraform apply -auto-approve