elasticsearch_service:
  service.running:
    - name: elasticsearch
    - enable: True
    - restart: True
    - watch:
      - file: /etc/elasticsearch/jvm.options
