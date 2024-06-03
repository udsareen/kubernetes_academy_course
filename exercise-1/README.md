# Exercise

## Steps

- Create a nginx pod
  - generate template using: `kubectl run nginx --image=nginx --restart=Never --port 80 --dry-run=client -o yaml > nginx-pod.yaml`
- Run the nginx pod
- Describe the pod
- (gitpod) Setup port forwarding to the pod
  - `kubectl port-forward nginx 8080:80` where local port 8080 and container port is 80.
  - Browse to the url by clicking on the ports tab and click on the browser icon next to port 8080.
- (microk8s) go to the webpage on port 80
- Recreate the nginx pod with the wrong command and change the restartPolicy to always
  - you can use command: `kubectl run nginx --image=nginx --restart=Never --port 80 --dry-run=client -o yaml --restart=Always --command -- unexisting > nginx-pod.yaml`
- Add resource requests and limits to a valid pod specification
