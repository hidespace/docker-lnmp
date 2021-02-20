#!/usr/bin/env bash

WS_PATH=/ws/volumes
WWW_PATH=/ws/www
ENV_PATH=/ws/env

NGINX=nginx1.16.1
PHP72=php-fpm7.2.27

mkdir -p $WWW_PATH
chown -R nobody:nobody $WWW_PATH

mkdir -p $ENV_PATH

mkdir -p $WS_PATH/$NGINX/{conf, log}
/bin/cp -rf ./conf/nginx/* $WS_PATH/$NGINX/conf

mkdir -p $WS_PATH/$PHP72/{conf, log}
touch $WS_PATH/$PHP72/log/error.log
/bin/cp -rf ./conf/php/* $WS_PATH/$PHP72/conf

chmod a+rwx $WS_PATH/$NGINX/log
chmod a+rwx $WS_PATH/$PHP72/log/error.log

#docker-compose up -d

