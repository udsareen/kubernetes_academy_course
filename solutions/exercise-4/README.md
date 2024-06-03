# Deployments

## Steps

- create deployment for nilli9990/cat-webapp (port 5000)
  - generate template using: `kubectl create deployment cat-webapp --image=nilli9990/cat-webapp --port 5000 --dry-run=client -o yaml > cat-webapp-deployment.yaml`
- load webpage
- update deployment with env variable CAT_INDEX=[1..3]
- watch rollout status
- check webpage
