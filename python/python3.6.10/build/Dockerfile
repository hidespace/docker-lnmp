FROM centos:7

MAINTAINER rocky <RockyJiang21@outlook.com>

LABEL version="python:3.6.10" created_at="2020/10/26"

ENV TIME_ZONE Asia/Shanghai

ENV PYTHON_VERSION 3.6.9

WORKDIR /app

RUN ln -sf /usr/share/zoneinfo/${TIME_ZONE} /etc/localtime \
&& yum install -y wget gcc-c++ make \
&& wget https://www.python.org/ftp/python/3.6.9/Python-3.6.9.tgz \
&& yum install -y zlib-devel bzip2-devel openssl-devel ncurses-devel sqlite-devel \
&& yum install -y readline-devel tk-devel gdbm-devel db4-devel libpcap-devel xz-devel \
&& mkdir -p /usr/local/python3 \
&& tar -zxf Python-3.6.9.tgz \
&& cd Python-3.6.9 \
&& ./configure --prefix=/usr/local/python3 --with-ssl --enable-optimizations \
&& make && make install \
&& ln -s /usr/local/python3/bin/python3 /usr/bin/python3 \
&& ln -s /usr/local/python3/bin/pip3 /usr/bin/pip3 \
&& pip3 install --upgrade pip \
&& rm -rf /app/*

ENTRYPOINT ["python3"]

CMD ["-V"]