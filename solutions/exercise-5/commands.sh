k create secret generic my-secret --from-literal=username=niels --from-literal=password=secretpw --dry-run -o yaml > secret.yaml
k create secret generic my-file-secret --from-env-file=./values.env --dry-run -o yaml > filesecret.yaml
k get secret my-secret -o=jsonpath='{.data.password}' | base64 -d

