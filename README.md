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
    version: '5.6.3'
    use_memory: 0.6
    plugins:
      discovery-ec2: discovery-ec2
```
