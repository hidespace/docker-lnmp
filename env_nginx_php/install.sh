#!/usr/bin/env bash

VOL_PATH=/ws/volumes
WWW_PATH=/ws/www
NGINX=nginx1.16.1
PHP=php-fpm7.2.27

mkdir -p $VOL_PATH/$NGINX/{conf,log} && /bin/cp -rf ./conf/nginx/* $VOL_PATH/$NGINX/conf
mkdir -p $VOL_PATH/$PHP/{conf,log} && /bin/cp -rf ./conf/php/* $VOL_PATH/$PHP/conf

chmod -R a+rwx $VOL_PATH/$NGINX/*
chmod -R a+rwx $VOL_PATH/$PHP/*
chown -R nobody:nobody $WWW_PATH

exit

docker network create network_lnmp

docker pull navioo/nginx:1.16.1
docker pull navioo/php-fpm:7.2.27
docker pull navioo/redis:5.0.9


cd /ws/docker/docker-lnmp/env_nginx_php || exit
docker-compose up -d

