# salt-elasticsearch-formula

Salt formula for installing elasticsearch (5.6.3) to ubuntu

Example `top.sls`:

```salt
base:
  '*':
    - elasticsearch
```

Example pillar:

```salt
elasticsearch:
  plugins:
    discovery-ec2: discovery-ec2
```
