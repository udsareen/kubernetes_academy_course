# Exercise

## Steps

- Create an nginx pod
  - generate template using: `kubectl run nginx --image=nginx --restart=Never --port 80 --dry-run=client -o yaml > nginx-pod.yaml`
- Run the nginx pod
- Describe the pod
- Setup port forwarding to the pod
  - `kubectl port-forward nginx 8080:80` where local port 8080 and container port is 80.
- Browse to the url by clicking on the ports tab and click on the browser icon next to port 8080.
- Recreate the nginx pod with the wrong command
-- Change the restartPolicy and see the impact
- Add resource requests and limits to a valid pod specification
