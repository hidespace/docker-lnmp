FROM centos:7

MAINTAINER rocky <RockyJiang21@outlook.com>

LABEL version="nginx1.16:1.0" created_at="2020/05/20"

ENV TIME_ZONE Asia/Shanghai

WORKDIR /app

ADD src/nginx-1.16.1.tar.gz /app/src

RUN ln -sf /usr/share/zoneinfo/${TIME_ZONE} /etc/localtime \
&& yum install -y gcc gcc-c++ autoconf automake make pcre-devel zlib-devel openssl-devel \
&& cd src/nginx-1.16.1 \
&& ./configure --prefix=/usr/local/nginx --with-http_stub_status_module --with-http_ssl_module \
&& make && make install \
&& rm -rf /app/src

EXPOSE 80 443

ENTRYPOINT ["/usr/local/nginx/sbin/nginx"]

CMD [ "-g", "daemon off;"]