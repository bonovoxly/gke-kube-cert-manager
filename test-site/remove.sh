#!/bin/bash
kubectl delete -f ingress.yml
kubectl delete -f service.yml
kubectl delete -f test-deployment.yml
kubectl delete -f cert.yml 
