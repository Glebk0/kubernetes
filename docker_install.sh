#!/bin/bash

yum install -y yum-utils jq net-tools vim
yum-config-manager --add-repo \
https://download.docker.com/linux/centos/docker-ce.repo
yum-config-manager --enable docker-ce-edge
yum install -y docker-ce
systemctl enable docker
systemctl start docker
usermod -aG docker vagrant
touch /etc/docker/daemon.json
cat << EOF > /etc/docker/daemon.json
{
"exec-opts": [
"native.cgroupdriver=systemd"
],
"storage-driver": "devicemapper"
}
EOF
systemctl daemon-reload
systemctl restart docker

