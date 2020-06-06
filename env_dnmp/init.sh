#!/usr/bin/env bash

WS_PATH=/ws/volumes
WWW_PATH=/ws/www

NGINX=nginx1.16.1
PHP72=php-fpm7.2.27
MYSQL=mysql5.7.27
REDIS=redis5.0.9
RABBITMQ=rabbitmq3.8.4m

mkdir -p $WWW_PATH
chown nobody:nobody -R $WWW_PATH

mkdir -p $WS_PATH/$NGINX/{conf,log}
/bin/cp -rf ./conf/nginx/* $WS_PATH/$NGINX/conf

mkdir -p $WS_PATH/$PHP72/{conf,log}
touch $WS_PATH/$PHP72/log/error.log
chmod a+rwx $WS_PATH/$PHP72/log/error.log
/bin/cp -rf ./conf/php/* $WS_PATH/$PHP72/conf

mkdir -p $WS_PATH/$MYSQL/{data,log,conf.d}
touch $WS_PATH/$MYSQL/log/error.log
chmod a+rwx $WS_PATH/$MYSQL/log/error.log
/bin/cp -rf ./conf/mysql/conf.d/* $WS_PATH/$MYSQL/conf.d

mkdir -p $WS_PATH/$REDIS/{data,conf}
/bin/cp -rf ./conf/redis/conf/* $WS_PATH/$REDIS/conf

mkdir -p $WS_PATH/$RABBITMQ/{data,log,conf}
/bin/cp -rf ./conf/rabbitmq/conf/* $WS_PATH/$RABBITMQ/conf

#docker-compose up -d


