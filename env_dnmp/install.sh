#!/usr/bin/env bash

function make_path () {
    for path in $*;
    do
        if [ -d $path ]; then
            rm -rf $path
        fi
        mkdir -p $path
    done
}



VOL_PATH=/ws/volumes
WWW_PATH=/ws/www
ENV_PATH=/ws/env

NGINX=nginx1.16.1
PHP=php-fpm7.2.27
MYSQL=mysql5.7.27
REDIS=redis5.0.9
RABBITMQ=rabbitmq3.8.4m

make_path $VOL_PATH $WWW_PATH $ENV_PATH && cd $VOL_PATH

mkdir -p $NGINX/{conf,log} 
mkdir -p $PHP/{conf,log}
mkdir -p $MYSQL/{data,log,conf.d}
mkdir -p $REDIS/{data,conf}
mkdir -p $RABBITMQ/{data,log,conf}

cd /ws/docker/docker-lnmp/env_dnmp

/bin/cp -rf ./conf/nginx/* $VOL_PATH/$NGINX/conf
/bin/cp -rf ./conf/php/* $VOL_PATH/$PHP/conf
/bin/cp -rf ./conf/mysql/conf.d/* $WS_PATH/$MYSQL/conf.d
/bin/cp -rf ./conf/redis/conf/* $WS_PATH/$REDIS/conf
/bin/cp -rf ./conf/rabbitmq/conf/* $WS_PATH/$RABBITMQ/conf

chmod -R a+rwx $VOL_PATH/$NGINX/*
chmod -R a+rwx $VOL_PATH/$PHP/*
chmod -R a+rwx $VOL_PATH/$MYSQL/*
chmod -R a+rwx $VOL_PATH/$REDIS/*
chmod -R a+rwx $VOL_PATH/$RABBITMQ/*
chown -R nobody:nobody $WWW_PATH


docker network create network_lnmp

docker pull navioo/nginx:1.16.1
docker pull navioo/php-fpm:7.2.27
docker pull navioo/mysql:5.7.27
docker pull navioo/redis:5.0.9
docker pull navioo/rabbitmq:3.8.4m

docker-compose up -d
