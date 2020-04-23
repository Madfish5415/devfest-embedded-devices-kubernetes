#!/bin/bash

IFS=
template=`cat k3s-template.yml`

COUCHDB_CLOUD_NAME="couchdb-cloud"
COUCHDB_CLOUD_IMAGE="couchdb:latest"
COUCHDB_CLOUD_PORT="31444"
COUCHDB_CLOUD_VOLUME_DATA="/home/couchdb/data/cloud/"
COUCHDB_CLOUD_VOLUME_DATA="/home/couchdb/config/cloud/"

template=`echo $template | \
sed "s@{{COUCHDB_CLOUD_NAME}}@$COUCHDB_CLOUD_NAME@g" | \
sed "s@{{COUCHDB_CLOUD_IMAGE}}@$COUCHDB_CLOUD_IMAGE@g" | \
sed "s@{{COUCHDB_CLOUD_PORT}}@$COUCHDB_CLOUD_PORT@g" | \
sed "s@{{COUCHDB_CLOUD_VOLUME_DATA}}@$COUCHDB_CLOUD_VOLUME_DATA@g" | \
sed "s@{{COUCHDB_CLOUD_VOLUME_DATA}}@$COUCHDB_CLOUD_VOLUME_CONFIG@g"`


COUCHDB_DEVICE_NAME="couchdb-device"
COUCHDB_DEVICE_IMAGE="couchdb:latest"
COUCHDB_DEVICE_PORT="31555"
COUCHDB_DEVICE_VOLUME_DATA="/home/couchdb/data/device/"
COUCHDB_DEVICE_VOLUME_CONFIG="/home/couchdb/config/device/"

template=`echo $template | \
sed "s@{{COUCHDB_DEVICE_NAME}}@$COUCHDB_DEVICE_NAME@g" | \
sed "s@{{COUCHDB_DEVICE_IMAGE}}@$COUCHDB_DEVICE_IMAGE@g" | \
sed "s@{{COUCHDB_DEVICE_PORT}}@$COUCHDB_DEVICE_PORT@g" | \
sed "s@{{COUCHDB_DEVICE_VOLUME_DATA}}@$COUCHDB_DEVICE_VOLUME_DATA@g" | \
sed "s@{{COUCHDB_DEVICE_VOLUME_CONFIG}}@$COUCHDB_DEVICE_VOLUME_CONFIG@g"`

#echo "$template" | kubectl apply -f -