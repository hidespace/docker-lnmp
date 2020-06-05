#!/usr/bin/env bash

WS_PATH=/ws/volumes
MYSQL=mysql5.7.27

mkdir -p $WS_PATH/$MYSQL/{data,log,conf.d}
touch $WS_PATH/$MYSQL/log/error.log
chmod a+rwx $WS_PATH/$MYSQL/log/error.log
/bin/cp -rf ./conf.d/* $WS_PATH/$MYSQL/conf.d

#docker-compose up -d