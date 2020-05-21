FROM centos:7

MAINTAINER rocky <RockyJiang21@outlook.com>

LABEL version="php-fpm7.2:1.0" created_at="2020/05/20"

ENV TIME_ZONE Asia/Shanghai

RUN ln -sf /usr/share/zoneinfo/${TIME_ZONE} /etc/localtime \
&& rpm -Uvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm \
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
php72w-pecl-redis.x86_64 

WORKDIR /app

ENTRYPOINT ["/usr/sbin/php-fpm"]

CMD ["--nodaemonize", "--fpm-config", "/etc/php-fpm.conf"]