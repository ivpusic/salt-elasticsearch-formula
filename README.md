# salt-elasticsearch-formula

Salt formula for installing elasticsearch (5.6.3) to ubuntu

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
    use_memory: 0.6
    plugins:
      discovery-ec2: discovery-ec2
```
