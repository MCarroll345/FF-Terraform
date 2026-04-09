#!/bin/bash
set -e

# FF KEDA script startup
echo "KEDA for FF"
cd 1-FF-Recom/keda-tf
terraform init -upgrade
terraform apply -auto-approve

echo "Waiting for KEDA CRDs to be established..."
kubectl wait --for=condition=Established crd/scaledobjects.keda.sh crd/triggerauthentications.keda.sh --timeout=120s

cd ../../2-FF-Clothes/keda-tf
terraform init -upgrade
terraform apply -auto-approve

cd ../../3-FF-ML/keda-tf
terraform init -upgrade
terraform apply -auto-approve

cd ../../4-FF-User/keda-tf
terraform init -upgrade
terraform apply -auto-approve