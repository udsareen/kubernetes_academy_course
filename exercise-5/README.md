# Secrets

## Steps

- create generic secret with username and password data
  - you can use the following command: `kubectl create secret generic my-secret --from-literal=username=niels --from-literal=password=secretpw --dry-run -o yaml > secret.yaml`
- read the secret
- read and decode the password
- mount the secret as an environment variable in your nginx pod
  - tip: look into the `envFrom` property of the container spec
- (bis): create secret from env file
