FROM php:7.2-cli-alpine

MAINTAINER rocky <RockyJiang21@outlook.com>

LABEL version="php-cli:7.2-3" created_at="2021/05/21"

ENV TIME_ZONE Asia/Shanghai

RUN apk update && apk add tzdata \
&& ln -sf /usr/share/zoneinfo/${TIME_ZONE} /etc/localtime

RUN docker-php-source extract \
&& curl -fsSL https://pecl.php.net/get/redis-5.3.4.tgz -o redis.tgz \
&& mkdir -p /usr/src/php/ext/redis \
&& tar -xf redis.tgz -C /usr/src/php/ext/redis --strip-components=1 \
&& rm redis.tgz \
&& docker-php-ext-install redis \
&& docker-php-ext-install pdo_mysql bcmath

RUN curl -fsSL https://pecl.php.net/get/swoole-4.6.7.tgz -o swoole.tgz \
&& mkdir -p /usr/src/php/ext/swoole \
&& tar -xf swoole.tgz -C /usr/src/php/ext/swoole --strip-components=1 \
&& rm swoole.tgz \
&& apk add --no-cache libstdc++ \
&& docker-php-ext-install swoole \
&& docker-php-source delete






