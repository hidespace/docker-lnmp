#!/usr/bin/env bash

##安装git
yum install -y git

##安装docker
#卸载干净docker相关程序
yum remove docker \
    docker-client \
    docker-client-latest \
    docker-common \
    docker-latest \
    docker-latest-logrotate \
    docker-logrotate \
    docker-engine

#安装工具
yum install -y yum-utils device-mapper-persistent-data ivm2

#yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
yum-config-manager --add-repo http://mirrors.aliyun.com/docker-ce/linux/centos/docker-ce.repo
yum makecache fast

yum install -y docker-ce docker-ce-cli containerd.io

systemctl start docker && systemctl enable docker

#安装docker-compose
curl -L "https://github.com/docker/compose/releases/download/1.25.5/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose

