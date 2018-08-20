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

join
  kubeadm join 192.168.1.80:6443 --token jof9ps.x0ume6ukjyfvsjw5 --discovery-token-ca-cert-hash sha256:c085f2cbb127ac37e8b2fe22ba5a46ebf6b489d6f4e9ebc6c09a60aefc0da55e
