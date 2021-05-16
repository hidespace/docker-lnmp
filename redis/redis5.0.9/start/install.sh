#!/usr/bin/env bash

VOL_PATH=/ws/volumes
REDIS=redis5.0.9

mkdir -p $VOL_PATH/$REDIS/{data,conf} && /bin/cp -rf ./conf/* $VOL_PATH/$REDIS/conf


# redis password
PASS_DEFAULT=so7X@co9Wp
PASS_REPLACE=

if [[ $PASS_REPLACE != '' ]]; then
    sed -i "s/$PASS_DEFAULT/$PASS_REPLACE" $VOL_PATH/$REDIS/conf/redis.conf
fi


#启动服务
#docker-compose -f docker-compose.yml up -d

#停止服务
#docker-compose -f docker-compose.yml stop

#停止并删除服务
#docker-compose -f docker-compose.yml down