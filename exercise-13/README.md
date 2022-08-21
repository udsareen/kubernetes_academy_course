# Rbac

## Steps

- create role + binding + service account to get/list pods in default namespace
- create kubectl pod using this service account
-- image: bitnami/kubectl:1.22-debian-10
- exec in the pod and list pods in multiple namespaces
- (bis) extend permissions to delete pods (pod-manager)
