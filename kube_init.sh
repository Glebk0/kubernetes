swapoff -a 
kubeadm init --pod-network-cidr 10.244.0.0/16 --apiserver-advertise-address 192.168.1.80 
kubectl apply -f https://gist.githubusercontent.com/sbeliakou/6d128303674f88f60fa64e99af4f640d/raw/f3a40d416391436c7a74a9c21bd758d0c5b0664c/kube-flannel.yaml 
mkdir -p $HOME/.kube/bin/ 
cp -f /etc/kubernetes/admin.conf $HOME/.kube/config 
chown $(id -u):$(id -g) $HOME/.kube/config