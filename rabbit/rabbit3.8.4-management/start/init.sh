#!/usr/bin/env bash

APP_PATH=/ws/volumes
APP_NAME=rabbitmq3.8.4m

mkdir -p ${APP_PATH}/${APP_NAME}/{data, log}
cp -rf ./conf ${APP_PATH}/${APP_NAME}

#docker-compose up -d


