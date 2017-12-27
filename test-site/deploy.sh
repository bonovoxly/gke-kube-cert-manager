#!/bin/bash
kubectl create -f cert.yml 
kubectl create -f test-deployment.yml
kubectl create -f service.yml
kubectl create -f ingress.yml
