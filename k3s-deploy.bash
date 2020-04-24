#!/bin/bash

kubectl kustomize k3s/couchdb-cloud | kubectl apply -f -

kubectl kustomize k3s/couchdb-device | kubectl apply -f -