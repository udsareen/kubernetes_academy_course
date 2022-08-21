# Init containers

## Steps:

- add init container to nginx pod
-- ['sh', '-c', 'echo running init! && sleep 15']
- describe pods/logs when running it
