# Persistent volumes

## Steps

- luanch nginx pod and go to /usr/share/nginx/html/index.html
- crate a custom index.html and put it at /tmp/storage/data
- create nginx pod with volume mount to the host
- create a pv and pvc using same directory and mount it
