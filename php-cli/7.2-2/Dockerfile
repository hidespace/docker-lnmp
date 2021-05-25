FROM php:7.2-cli-alpine

MAINTAINER rocky <RockyJiang21@outlook.com>

LABEL version="php-cli:7.2-2" created_at="2021/05/21"

ENV TIME_ZONE Asia/Shanghai

RUN apk update && apk add tzdata \
&& ln -sf /usr/share/zoneinfo/${TIME_ZONE} /etc/localtime

RUN docker-php-source extract \
&& curl -fsSL https://pecl.php.net/get/redis-5.3.4.tgz -o redis.tgz \
&& mkdir -p /usr/src/php/ext/redis \
&& tar -xf redis.tgz -C /usr/src/php/ext/redis --strip-components=1 \
&& rm redis.tgz \
&& docker-php-ext-install redis \
&& docker-php-ext-install pdo_mysql bcmath \
&& docker-php-source delete

RUN apk add --no-cache -U autoconf \
&& apk add --no-cache -U gcc \
&& apk add --no-cache -U make \
&& apk add --no-cache -U libc-dev \
&& apk add --no-cache -U rabbitmq-c \
&& apk add --no-cache -U rabbitmq-c-dev \
&& pecl install amqp \
&& apk del autoconf \
&& apk del autoconf make\
&& apk del autoconf gcc \
&& echo 'extension=amqp.so' >  /usr/local/etc/php/conf.d/docker-php-ext-amqp.ini
