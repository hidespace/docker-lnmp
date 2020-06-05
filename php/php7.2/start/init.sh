#!/usr/bin/env bash

APP_PATH=/ws/volumes
APP_NAME=php-fpm7.2

mkdir -p $APP_PATH/$APP_NAME/log/php-fpm
touch $APP_PATH/$APP_NAME/log/php-fpm/error.log
cp -rf ./conf $APP_PATH/$APP_NAME

#docker-compose up -d




mkdir -p $APP_PATH/$APP_NAME/log/php-fpm
touch $APP_PATH/$APP_NAME/log/php-fpm/error.log
cp -rf ./conf $APP_PATH/$APP_NAME