FROM centos:7

MAINTAINER rocky <RockyJiang21@outlook.com>

LABEL version="php-cli:7.2.27-supervisor" created_at="2021/05/17"

ENV TIME_ZONE Asia/Shanghai

WORKDIR /app


RUN ln -sf /usr/share/zoneinfo/${TIME_ZONE} /etc/localtime \
&& yum install -y epel-release \
&& yum install -y supervisor 

RUN yum -y install cronie \
&& yum -y install crontabs \
&& sed -i '/session    required   pam_loginuid.so/c\#session    required   pam_loginuid.so' /etc/pam.d/crond

ADD src/rabbitmq-c-0.10.0.tar.gz /app/src
RUN rpm -Uvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm \
&& rpm -Uvh https://mirror.webtatic.com/yum/el7/webtatic-release.rpm \
&& yum -y install php72w.x86_64 \
php72w-bcmath.x86_64 \
php72w-cli.x86_64 \
php72w-common.x86_64 \
php72w-fpm.x86_64 \
php72w-gd.x86_64 \
php72w-ldap.x86_64 \
php72w-mbstring.x86_64 \
php72w-mcrypt.x86_64 \
php72w-mysqlnd.x86_64 \
php72w-pdo.x86_64 \
php72w-pear.noarch \
php72w-process.x86_64 \
php72w-soap.x86_64 \
php72w-xml.x86_64 \
php72w-opcache.x86_64 \
php72w-pecl-igbinary.x86_64 \
php72w-pecl-redis.x86_64 \
php72w-devel

RUN yum install -y gcc-c++ make openssl-devel \
&& printf "yes" | pecl install -f swoole \
&& echo extension=swoole.so >> /etc/php.d/sockets.ini

RUN yum install -y cmake \
&& cd src/rabbitmq-c-0.10.0 \
&& mkdir build && cd build \
&& cmake .. && cmake -DCMAKE_INSTALL_PREFIX=/usr/local/rabbitmq-c .. \
&& cmake --build . \
&& make && make install \
&& ln -s /usr/local/rabbitmq-c/lib64 /usr/local/rabbitmq-c/lib \
&& printf "/usr/local/rabbitmq-c" | pecl install amqp \
&& echo extension=amqp.so >> /etc/php.d/sockets.ini

CMD [ "/usr/bin/supervisord", "-n", "-c", "/etc/supervisord.conf" ]