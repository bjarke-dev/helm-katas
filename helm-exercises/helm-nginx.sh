
helm install my-release bitnami/nginx \
  --set service.type=NodePort \
  --set service.nodePorts.http=30080

# to run script:
# chmod +x helm-nginx.sh
# ./helm-nginx.sh

# to uninstall:
# helm uninstall my-release

# to check if nginx is running:
# kubectl get pods

# to check if the service is running:
# kubectl get svc

# to access nginx:
# curl localhost:8080 || or browser localhost8080 => should return the nginx welcome page (port 8080 is mapped to 30080 on the server via k3d, which is the NodePort for the nginx service)

