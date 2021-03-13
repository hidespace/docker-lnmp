#!/usr/bin/env bash

WS_PATH=/ws/volumes
NGINX=nginx1.14

mkdir -p $WS_PATH/$NGINX/{conf,log}
/bin/cp -rf ./conf/* $WS_PATH/$NGINX/conf

#docker-compose up -d



