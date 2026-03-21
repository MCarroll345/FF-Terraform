#!/bin/bash

# Shutdown AWS for FF
echo "AWS for FF shutdown"
cd 4-FF-User/aws-tf
terraform destroy -auto-approve
cd ../../3-FF-ML/aws-tf
terraform destroy -auto-approve
cd ../../2-FF-Clothes/aws-tf
terraform destroy -auto-approve
cd ../../1-FF-Recom/aws-tf
terraform destroy -auto-approve