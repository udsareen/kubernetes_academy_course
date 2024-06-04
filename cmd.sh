gp idp login aws --role-arn arn:aws:iam::299641483789:role/kubernetes-workshop-gitpod-role

# 1
kubectl apply -f nginx-pod.yaml
kubectl port-forward nginx 8080:80
kubectl get pods

kubectl get pod nginx -o wide

# 2
kubectl exec nginx ls

# 3

# 4
kubectl apply -f cat-webapp-deployment.yaml
kubectl get pod
kubectl port-forward cat-webapp-7c86b75d49-5qhr9 8081:5000

# 4.5
kubectl run multitool --image=praqma/network-multitool
kubectl exec -it multitool /bin/bash
printenv
kubectl create service clusterip my-cs --tcp=5678:8080 -o yaml > exercise-4/cluster.yaml
nslookup my-cs.udit.svc.cluster.local

# 5

# 7
