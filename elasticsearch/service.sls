/etc/systemd/system/elasticsearch.service.d/override.conf:
  file.managed:
    - source: salt://elasticsearch/files/elasticsearch.service
    - makedirs: True
    - user: root
    - group: root

elasticsearch_service:
  service.running:
    - name: elasticsearch
    - enable: True
    - restart: True
    - watch:
      - file: /etc/elasticsearch/jvm.options
      - file: /etc/systemd/system/elasticsearch.service.d/override.conf
