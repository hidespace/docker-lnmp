#!/usr/bin/env bash

VOL_PATH=/ws/volumes
WWW_PATH=/ws/www
NGINX=nginx1.16.1
PHP=php-fpm7.2.27

chown -R nobody:nobody $WWW_PATH
mkdir -p $VOL_PATH/$NGINX/{conf,log}
mkdir -p $VOL_PATH/$PHP/{conf,log}

chmod a+rwx $VOL_PATH/$NGINX
chmod a+rwx $VOL_PATH/$PHP

docker network create network_lnmp

docker pull navioo/nginx:1.16.1
docker pull navioo/php-fpm:7.2.27
docker pull navioo/redis:5.0.9


cd /ws/docker/docker-lnmp/env_nginx_php || exit
docker-compose up -d

