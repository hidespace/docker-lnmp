#!/usr/bin/env bash

mkdir -p /ws/volumes/php-fpm7.2/log/php-fpm
#touch error.log
#touch php-fpm.log
cp -rf ./conf /ws/volumes/php-fpm7.2

#docker-compose up -d

