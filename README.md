# salt-elasticsearch-formula

Salt formula for installing elasticsearch (5.X.X) to ubuntu

Example `top.sls`:

```yaml
base:
  '*':
    - elasticsearch
```

Exapmle pillar for single node:

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
```

Example pillar for zen discovery:

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

Example pillar for aws discovery:

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
      aws:
        access_key: '<your_access_key>'
        secret_key: '<your_secret_key>'
        region: '<your_region>'
        security_groups: '<your_security_groups_to_match>'
    plugins:
      discovery-ec2: discovery-ec2
```
