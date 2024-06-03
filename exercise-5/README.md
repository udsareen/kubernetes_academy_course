# Secrets

## Steps

- create generic secret with username and password data
  - generate template using: `kubectl create secret generic my-secret --from-literal=username=niels --from-literal=password=secretpw --dry-run=client -o yaml > secret.yaml`
- read the secret
- read and decode the password
- mount the username and password as environment variables in your nginx pod
  - option1: look into the `envFrom` property 
    ```yaml
    envFrom:
    - secretRef:
        name: my-secret
    ```
  - option2: look into the `env` property with `of the container spec
    ```yaml
    env:
    - name: USERNAME
      valueFrom:
        secretKeyRef:
          name: my-secret
          key: username
    ...
    ```
- (bis): create secret from env file
