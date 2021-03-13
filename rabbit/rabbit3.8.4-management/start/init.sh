#!/usr/bin/env bash

WS_PATH=/ws/volumes
RABBITMQ=rabbitmq3.8.4m

mkdir -p $WS_PATH/$RABBITMQ/{data,log,conf}
/bin/cp -rf ./conf/* $WS_PATH/$RABBITMQ/conf

#docker-compose up -d

