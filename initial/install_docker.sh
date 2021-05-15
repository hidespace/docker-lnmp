#!/usr/bin/env bash


##安装docker
#卸载干净docker相关程序
yum remove -y docker \
    docker-client \
    docker-client-latest \
    docker-common \
    docker-latest \
    docker-latest-logrotate \
    docker-logrotate \
    docker-selinux \
    docker-engine-selinux \
    docker-engine 
    
yum remove -y docker-ce docker-ce-cli containerd.io && rm -f /usr/local/bin/docker-compose

    
#安装工具
yum install -y yum-utils device-mapper-persistent-data ivm2

#yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
yum-config-manager --add-repo http://mirrors.aliyun.com/docker-ce/linux/centos/docker-ce.repo
yum makecache fast

yum install -y docker-ce docker-ce-cli containerd.io

sudo systemctl start docker && sudo systemctl enable docker


#配置镜像加速
sudo mkdir -p /etc/docker
sudo tee /etc/docker/daemon.json <<-'EOF'
{
  "registry-mirrors": [
    "https://registry.docker-cn.com",
    "http://hub-mirror.c.163.com",
    "https://docker.mirrors.ustc.edu.cn",
    "https://reg-mirror.qiniu.com"
  ]
}
EOF
sudo systemctl daemon-reload
sudo systemctl restart docker


#安装docker-compose
curl -L "https://github.com/docker/compose/releases/download/1.25.5/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose



