FROM nginx:1.14.2

MAINTAINER rocky <RockyJiang21@outlook.com>

LABEL version="nginx:1.14.2" created_at="2020/05/20"

ENV TIME_ZONE Asia/Shanghai

RUN ln -sf /usr/share/zoneinfo/${TIME_ZONE} /etc/localtime 

WORKDIR /app

ENTRYPOINT ["nginx"]

CMD ["-g", "daemon off;"]