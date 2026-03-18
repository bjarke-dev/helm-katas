.PHONY: kind-up kind-down kind-ctx
# k3d cluster with 3 agents and port 8080 mapped to 30080 on the server (for NodePort services)
# k3d-up:
# 	k3d cluster create helm --agents 3 -p '8080:30080@server:0'

# k3d cluster without port mapping (for LoadBalancer services) use 'port-forward svc/<appname> <local_port>:<service_port>' to access the services
k3d-up:
	k3d cluster create helm --no-lb

k3d-down:
	k3d cluster delete helm

k3d-ctx:
	kubectl config use-context k3d-helm
