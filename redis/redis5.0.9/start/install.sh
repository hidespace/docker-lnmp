#!/usr/bin/env bash

VOL_PATH=/ws/volumes
REDIS=redis5.0.9

mkdir -p $VOL_PATH/$REDIS/{data,conf} && /bin/cp -rf ./conf/* $VOL_PATH/$REDIS/conf

#启动服务
#docker-compose -f docker-compose.yml up -d

#停止服务
#docker-compose -f docker-compose.yml stop

#停止并删除服务
#docker-compose -f docker-compose.yml down