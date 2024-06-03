# Using pod lifecycle

## Steps

- Update nginx pod with correct lifecycle settings (port 80)
  - generate template using: `kubectl run nginx --image=nginx --restart=Never --port 80 --dry-run=client -o yaml > nginx-pod.yaml`
- Create nginx pod with a liveness probe
  - liveness probes is configured per container. For our nginx container we will just check whether we can access the root page on default port 80.  
    ```yaml
    livenessProbe:
      httpGet:
        path: /
        port: 80
    ```
- What happens when we configure a wrong liveness probe. Update the liveness probe to check port 81 instead of port 80
- (bis): what other configuration options do you have for liveness probes


