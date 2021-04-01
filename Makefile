all:setup install-mysql install-keycloak
	echo "done"
setup:
	bash secret.sh
install-keycloak:
	kubectl apply -f keycloak.yaml
install-mysql:
	bash mysql.sh
mysql-port-forward:
	kubectl port-forward svc/mysql -n keycloak 3306:3306
