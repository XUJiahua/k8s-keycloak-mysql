

### Password in Secret

you may change password in secret.sh

1. keycloak admin user/password
2. mysql root password (username is root)
3. mysql keycloak database password (username is keycloak)


```
kubectl create secret -n keycloak generic keycloak \
--from-literal=keycloak_user=admin \
--from-literal=keycloak_password=admin

kubectl create secret -n keycloak generic mysql \
--from-literal=mysql-root-password=root \
--from-literal=mysql-replication-password= \
--from-literal=mysql-password=keycloak \
```


### Keycloak

`quay.io/keycloak/keycloak` does not support mysql, use `docker.io/keycloak` instead.

Reference:

1. https://github.com/keycloak/keycloak-quickstarts/blob/latest/kubernetes-examples/keycloak.yaml
2. https://github.com/keycloak/keycloak-containers/blob/master/server/README.md
3. https://hub.docker.com/r/jboss/keycloak/
4. https://github.com/bitnami/charts/tree/master/bitnami/keycloak (pg)

### MySQL

Reference:

1. https://github.com/bitnami/charts/tree/master/bitnami/mysql
