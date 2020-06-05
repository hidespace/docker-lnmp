#!/usr/bin/env bash

APP_PATH=/ws/volumes
APP_NAME=mysql5.7.27

mkdir -p $APP_PATH/$APP_NAME/{data,log}
cp -rf ./conf.d $APP_PATH/$APP_NAME

#docker-compose up -d