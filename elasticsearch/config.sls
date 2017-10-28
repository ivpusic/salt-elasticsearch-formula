{% from "elasticsearch/map.jinja" import es_config with context %}

/etc/elasticsearch/jvm.options:
  file.managed:
    - source: salt://elasticsearch/files/jvm.options
    - user: elasticsearch
    - group: elasticsearch
    - template: jinja
    - context:
      use_memory: {{es_config.use_memory}}
    - mode: 755
