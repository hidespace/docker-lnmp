#!/usr/bin/env bash

mkdir -p /ws/volumes/php-fpm7.2/log/php-fpm
touch /ws/volumes/php-fpm7.2/log/php-fpm/error.log
cp -rf ./conf /ws/volumes/php-fpm7.2

#docker-compose up -d


