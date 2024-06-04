# Configmaps

## Steps

- create properties file with 2 key-value properties
  - generate template using: `kubectl create cm my-cm --from-literal=key=value --from-literal=otherkey=othervalue --dry-run=client -o yaml > cm.yaml`
- expose all properties as environment variables in nginx pod
  - use the envFrom property to load all properties in the nginx pod
  ```yaml
  envFrom:
  - configMapRef:
      name: my-configmap
  ```
- exec in pod to see env variables
- (bis): create a configmap from prometheus config and mount it in nginx pod
  - you can use the following command to create the cm: `kubectl create cm prometheuscm --from-file=prometheus.yaml --dry-run=client -o yaml > cmPrometheusFile.yaml`

