FROM rabbitmq:3.8.4-management

MAINTAINER rocky <RockyJiang21@outlook.com>

LABEL version="rabbitmq:3.8.4-management" created_at="2020/06/04"

ENV TIME_ZONE Asia/Shanghai

RUN ln -sf /usr/share/zoneinfo/${TIME_ZONE} /etc/localtime 

ENTRYPOINT ["docker-entrypoint.sh"]

CMD ["rabbitmq-server"]
