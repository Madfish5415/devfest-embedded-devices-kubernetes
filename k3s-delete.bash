#!/bin/bash

kubectl kustomize k3s/couchdb-cloud | kubectl delete --ignore-not-found=true -f -

kubectl kustomize k3s/couchdb-device | kubectl delete --ignore-not-found=true -f -

kubectl delete --ignore-not-found=true -f k3s/manifests/ -f k3s/manifests/setup