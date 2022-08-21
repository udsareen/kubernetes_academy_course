# Statefulsets

## Steps

- create postgres db statefulset
-- image: widgetario/products-db:postgres-replicated
-- port: 5432
-- requires a volumemount: /var/lib/postgresql/data
-- requires secrets: POSTGRES_PASSWORD and PGPASSWORD
