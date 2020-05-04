#!/bin/bash

kubectl kustomize k3s/couchdb-cloud | kubectl apply -f -

kubectl kustomize k3s/couchdb-device | kubectl apply -f -

kubectl create -f k3s/manifests/setup
until kubectl get servicemonitors --all-namespaces ; do date; sleep 1; echo ""; done
kubectl create -f k3s/manifests/