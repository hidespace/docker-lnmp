docker build -t navioo/php-cli:7.2-supv-cron -f Dockerfile .


docker run -dit --name php-cli-7.2-supv-cron navioo/php-cli:7.2-supv-cron

crontab.sh 
>>>
# do daily/weekly/monthly maintenance
# min   hour    day     month   weekday command
*/15    *       *       *       *       run-parts /etc/periodic/15min
0       *       *       *       *       run-parts /etc/periodic/hourly
0       2       *       *       *       run-parts /etc/periodic/daily
0       3       *       *       6       run-parts /etc/periodic/weekly
0       5       1       *       *       run-parts /etc/periodic/monthly

# define your scripts

>>>

chmod 600 crontab.sh

docker run -dit --name php-cli7.2-supv-cron \
-v /ws/volumes/php-cli7.2-supv-cron/supervisord.conf:/etc/supervisord.conf \
-v /ws/volumes/php-cli7.2-supv-cron/supervisor.d:/etc/supervisor.d \
-v /ws/volumes/php-cli7.2-supv-cron/log:/var/log \
-v /ws/crontab/crontab.sh:/var/spool/cron/crontabs/root \
-v /ws/www:/web \
navioo/php-cli:7.2-supv-cron
