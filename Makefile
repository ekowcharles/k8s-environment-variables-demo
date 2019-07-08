default: create

create:
	kubectl apply -f 01-namespace.yml
	kubectl apply -f 02-env-app-config.yml
	kubectl apply -f 03-app-config.yml
	kubectl apply -f 04-secret.yml
	kubectl apply -f 05-pod.yml

check:
	kubectl logs pod/app -n env-setup

clean:
	kubectl delete pod/app -n env-setup
	kubectl delete configmaps/app-config -n env-setup
	kubectl delete configmaps/env-app-config -n env-setup
	kubectl delete secret/app-secret -n env-setup
	kubectl delete namespace/env-setup -n env-setup