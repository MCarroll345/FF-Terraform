#!/bin/bash
set -e

# Shutdown KEDA for FF
echo "KEDA for FF shutdown"
cd 4-FF-User/keda-tf
terraform destroy -auto-approve
cd ../../3-FF-ML/keda-tf
terraform destroy -auto-approve
cd ../../2-FF-Clothes/keda-tf
terraform destroy -auto-approve
cd ../../1-FF-Recom/keda-tf
terraform destroy -auto-approve

echo "Cleaning up keda namespace..."
kubectl delete namespace keda --ignore-not-found
kubectl wait --for=delete namespace/keda --timeout=120s 2>/dev/null || true