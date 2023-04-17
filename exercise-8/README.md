# Ingress

## Steps

Setup ingress for 2 deployments of our cats deployment with different images.

# Local setup
- cat0.example.com cat0-svc
- cat1.example.com cat1-svc

Make sure your local kubernetes cluster has ingress enabled
Make sure to change the /etc/hosts with the correct entries such that they are routable

# Eks cluster
- rule for path with prefix: /cat0 -> cat0-svc
- rule for path with prefix /cat1 -> cat1-svc
Check the status of the ingress resource, make sure the address property is filled in with a random dns record.
Note: Make sure to use NodePort services instead of ClusterIP since the aws-load-balancer-controller only supports that

Note2: the current cluster has no DNS hosted zones zo the dns record is attached to a private ip which is why you cannot reach it.
