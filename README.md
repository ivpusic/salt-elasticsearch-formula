# salt-elasticsearch-formula

Salt formula for installing elasticsearch (5.X.X) to ubuntu

Example `top.sls`:

```yaml
base:
  '*':
    - elasticsearch
```

Example pillar:

```yaml
elasticsearch:
  lookup:
    cluster_name: 'salt-cluster'
    version: '5.6.3'
    use_memory: 0.5
    bootstrap:
      memory_lock: 'true'
    network:
      host: '0.0.0.0'
    discovery:
      zen:
        hosts:
          - '172.17.0.3'
          - '172.17.0.4'
          - '172.17.0.5'
```
