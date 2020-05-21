FROM mysql:5.7

MAINTAINER rocky <RockyJiang21@outlook.com>

LABEL version="mysql5.7:1.0" created_at="2020/05/21"

ENV TIME_ZONE Asia/Shanghai

RUN ln -sf /usr/share/zoneinfo/${TIME_ZONE} /etc/localtime 

WORKDIR /app

ENTRYPOINT ["docker-entrypoint.sh"]

CMD ["mysqld"]