#!/bin/bash

# FF AWS script startup
echo "AWS for FF"
cd 1-FF-Recom/aws-tf
terraform init
terraform apply -auto-approve
cd ../../2-FF-Clothes/aws-tf
terraform init
terraform apply -auto-approve
cd ../../3-FF-ML/aws-tf
terraform init
terraform apply -auto-approve
cd ../../4-FF-User/aws-tf
terraform init
terraform apply -auto-approve