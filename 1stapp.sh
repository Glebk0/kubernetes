kubectl create -f https://gist.githubusercontent.com/sbeliakou/cba6d22931b4a86197b9b722e374b4e3/raw/ab4f3522fc25c56f75a6ed7415b3349b1677d4aa/sample_application.yaml 
kubectl exec -n ingress-nginx $(kubectl get pods -n ingress-nginx | grep controller | awk '{print $1}') cat /etc/nginx/nginx.conf 
kubectl exec -it -n ingress-nginx $(kubectl get pods -n ingress-nginx | grep controller | awk '{print $1}') sh
