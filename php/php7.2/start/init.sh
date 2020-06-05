#!/usr/bin/env bash

WS_PATH=/ws/volumes
PHP=php-fpm7.2

mkdir -p $WS_PATH/$PHP/{conf,log}
touch $WS_PATH/$PHP/log/error.log
/bin/cp -rf ./conf/* $WS_PATH/$PHP/conf

#docker-compose up -d


