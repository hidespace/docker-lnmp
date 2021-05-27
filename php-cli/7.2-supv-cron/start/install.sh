#!/usr/bin/env bash

VOL_PATH=/ws/volumes
PHP_CLI_SUPV=php-cli7.2-supv-cron

mkdir -p $VOL_PATH/$PHP_CLI_SUPV/{supervisor.d,log}
/bin/cp -rf ./conf/* $VOL_PATH/$PHP_CLI_SUPV

# define your crontab script and supervisord config
exit

docker run -dit --name php-cli7.2-supv-cron \
-v /ws/volumes/php-cli7.2-supv-cron/supervisord.conf:/etc/supervisord.conf \
-v /ws/volumes/php-cli7.2-supv-cron/supervisor.d:/etc/supervisor.d \
-v /ws/volumes/php-cli7.2-supv-cron/log:/var/log \
-v /ws/volumes/php-cli7.2-supv-cron/crontabs/root:/var/spool/cron/crontabs/root \
-v /ws/www:/web \
navioo/php-cli:7.2-supv-cron