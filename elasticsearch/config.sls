/etc/elasticsearch/jvm.options:
  file.managed:
    - source: salt://elasticsearch/files/jvm.options
    - user: elasticsearch
    - group: elasticsearch
    - mode: 755
