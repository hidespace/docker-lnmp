#!/usr/bin/env bash

WS_PATH=/ws/volumes

NGINX=nginx
PHP=php
MYSQL=mysql
REDIS=redis
RABBITMQ=rabbitmq

mkdir -p $WS_PATH/{$NGINX,$PHP,$MYSQL,$REDIS,$RABBITMQ}
mkdir -p $WS_PATH/$NGINX/logs
cp -rf ./conf/nginx $WS_PATH/$NGINX

mkdir -p $WS_PATH/$PHP/log/php-fpm
touch $WS_PATH/$PHP/log/php-fpm/error.log
cp -rf ./conf/php $WS_PATH/$PHP

mkdir -p $WS_PATH/$MYSQL/{data,log}
cp -rf ./conf/mysql $WS_PATH/$MYSQL

mkdir -p $WS_PATH/$REDIS/data
cp -rf ./conf/redis $WS_PATH/$REDIS

mkdir -p $WS_PATH/$RABBITMQ/{data,log}
cp -rf ./conf/rabbitmq $WS_PATH/$RABBITMQ

#docker-compose up -d


