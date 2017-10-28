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

/etc/elasticsearch/elasticsearch.yml:
  file.managed:
    - source: salt://elasticsearch/files/elasticsearch.yml
    - user: elasticsearch
    - group: elasticsearch
    - template: jinja
    - context:
        cluster_name: {{es_config.cluster_name}}
        discovery: {{es_config.discovery}}
        bootstrap: {{es_config.bootstrap}}
        network: {{es_config.network}}
    - mode: 755
