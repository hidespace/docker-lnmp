#!/usr/bin/env bash

docker network create network_lnmp

docker pull navioo/nginx:1.16.1
docker pull navioo/php-fpm:7.2.27
docker pull navioo/redis:5.0.9

cd /ws/docker/docker-lnmp/env_nginx_php || exit
docker-compose up -d

