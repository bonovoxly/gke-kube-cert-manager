#!/bin/bash
kubectl create -f rbac.yml
kubectl create -f certificate-type.yml
kubectl create -f pvc.yml
kubectl create -f kube-cert-manager-deployment.yml
