#!/bin/bash
kubectl delete -f rbac.yml
kubectl delete -f certificate-type.yml
#kubectl delete -f pvc.yml
echo "THIS DOES NOT DELETE THE PERSISTENT VOLUME CLAIM.  MANUALLY DELETE THAT."
kubectl delete -f kube-cert-manager-deployment.yml
