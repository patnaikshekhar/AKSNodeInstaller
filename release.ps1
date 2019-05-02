docker build -t patnaikshekhar/node-installer:1.3 .
docker push patnaikshekhar/node-installer:1.3
kubectl apply -f .\k8s