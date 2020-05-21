#!/usr/bin/env bash

mkdir -p /ws/volumes/php-fpm7.0/log/php-fpm
touch /ws/volumes/php-fpm7.0/log/php-fpm.log
cp -rf ./conf /ws/volumes/php-fpm7.0

#docker-compose up -d


