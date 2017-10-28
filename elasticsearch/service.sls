elasticsearch_service:
  service.running:
    - name: elasticsearch
    - enable: True
    - restart: True
    - watch:
      - file: /etc/elasticsearch/jvm.options
      - file: /etc/elasticsearch/elasticsearch.yml
      - file: /etc/systemd/system/elasticsearch.service.d/override.conf
