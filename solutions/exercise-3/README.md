# Using pod lifecycle

## Steps

- Update nginx pod with correct lifecycle settings (port 80)
  - generate template using: `kubectl run nginx --image=nginx --restart=Never --port 80 --dry-run=client -o yaml > nginx-pod.yaml`
- Create nginx pod with wrong lifecycle
- What happens when liveness fails
- (bis): what options do you have for liveness probes


