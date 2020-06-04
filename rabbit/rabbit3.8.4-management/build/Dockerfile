FROM rabbitmq:3.8.4-management

MAINTAINER rocky <RockyJiang21@outlook.com>

LABEL version="redis:5.0.9" created_at="2020/06/04"

ENV TIME_ZONE Asia/Shanghai

RUN ln -sf /usr/share/zoneinfo/${TIME_ZONE} /etc/localtime 

COPY conf/redis.conf /etc/redis/redis.conf

ENTRYPOINT ["redis-server"]

CMD ["/etc/redis/redis.conf"]
