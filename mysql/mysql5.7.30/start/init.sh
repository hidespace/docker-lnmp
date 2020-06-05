#!/usr/bin/env bash

APP_PATH=/ws/volumes
APP_NAME=mysql5.7.30

mkdir -p $APP_PATH/$APP_NAME/{data,log}
touch $APP_PATH/$APP_NAME/log/error.log
cp -rf ./conf.d $APP_PATH/$APP_NAME

#docker-compose up -d