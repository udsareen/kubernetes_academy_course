# Ingress

## Steps

Setup ingress for 2 deployments of our cats deployment with different images.

# Local setup
- cat0.example.com cat0-svc
- cat1.example.com cat1-svc

Make sure your local kubernetes cluster has ingress enabled
Make sure to change the /etc/hosts with the correct entries such that they are routable

# Eks cluster
host: <first-username>-cats.k8sacademy.waydata.be
- rule for path with prefix: /cat0 -> cat0-svc
- rule for path with prefix /cat1 -> cat1-svc
  Check the status of the ingress resource, make sure the address property is filled in with a random dns record.
