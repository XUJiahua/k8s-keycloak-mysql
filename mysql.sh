helm repo add bitnami https://charts.bitnami.com/bitnami
helm upgrade -i mysql bitnami/mysql \
  --namespace keycloak --create-namespace  \
  -f mysql-values.yaml