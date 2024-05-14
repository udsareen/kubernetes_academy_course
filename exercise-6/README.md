# Configmaps

## Steps

- create properties file with 2 key-value properties
  - you can use the following command: `create secret generic my-secret --from-literal=username=niels --from-literal=password=secretpw --dry-run -o yaml > secret.yaml`
- load all properties in a configmap
- expose all properties as environment variables in nginx pod
- exec in pod to see env variables
- (bis): create a configmap from prometheus config and mount it in nginx pod
  - you can use the following command to create the cm: `create cm prometheuscm --from-file=prometheus.yaml --dry-run -o yaml > cmPrometheusFile.yaml`

