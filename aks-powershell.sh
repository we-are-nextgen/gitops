az aks get-credentials --resource-group nextgen-dev --name nextgen-aks 

# start using kubectl
kubtctl exec -it POD -n NAMESPACE -- /bin/sh

# oce you connect to postgresql pod

psql -h postgresqldb -U "$POSTGRES_USER" -d "$POSTGRES_DB"