kubectl create ns keycloak

kubectl create secret -n keycloak generic keycloak \
--from-literal=keycloak_user=admin \
--from-literal=keycloak_password=admin

kubectl create secret -n keycloak generic mysql \
--from-literal=mysql-root-password=root \
--from-literal=mysql-replication-password= \
--from-literal=mysql-password=keycloak \
