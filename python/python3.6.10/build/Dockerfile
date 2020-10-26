FROM centos:7

MAINTAINER rocky <RockyJiang21@outlook.com>

LABEL version="python:3.6.10" created_at="2020/05/20"

ENV TIME_ZONE Asia/Shanghai

RUN ln -sf /usr/share/zoneinfo/${TIME_ZONE} /etc/localtime \
&& rpm -Uvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm \
&& rpm -Uvh https://mirror.webtatic.com/yum/el7/webtatic-release.rpm \
&& yum -y install php70w.x86_64 \
php70w-bcmath.x86_64 \
php70w-cli.x86_64 \
php70w-common.x86_64 \
php70w-fpm.x86_64 \
php70w-gd.x86_64 \
php70w-ldap.x86_64 \
php70w-mbstring.x86_64 \
php70w-mcrypt.x86_64 \
php70w-mysqlnd.x86_64 \
php70w-pdo.x86_64 \
php70w-pear.noarch \
php70w-process.x86_64 \
php70w-soap.x86_64 \
php70w-xml.x86_64 \
php70w-opcache.x86_64 \
php70w-pecl-igbinary.x86_64 \
php70w-pecl-redis.x86_64 

WORKDIR /app

ENTRYPOINT ["/usr/sbin/php-fpm"]

CMD ["--nodaemonize", "--fpm-config", "/etc/php-fpm.conf"]