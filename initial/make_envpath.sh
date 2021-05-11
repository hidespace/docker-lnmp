#!/usr/bin/env bash


mkdir -p /ws/{docker,env,volumes,www} && cd /ws/docker || exit

yum install -y git

# git clone https://github.com/hidespace/docker-lnmp.git
git clone https://gitee.com/hidespace/docker-lnmp.git
