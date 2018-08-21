kubectl create -f https://raw.githubusercontent.com/kubernetes/dashboard/master/src/deploy/recommended/kubernetes-dashboard.yaml 
kubectl create -f https://gist.githubusercontent.com/sbeliakou/e1809c5d479129964c75653c5f9671a0/raw/b8d9fa1c795edacb11bc7204af7ac6058ff06bf7/admin-user.yaml
kubectl -n kube-system describe secret $(kubectl -n kube-system get secret | grep admin-user | awk '{print $1}')


