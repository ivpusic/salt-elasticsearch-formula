#salt-elasticsearch-formula

Salt formula for installing elasticsearch (5.6.3) to ubuntu

Example `top.sls`:

```salt
base:
  '*':
    - elasticsearch
```
