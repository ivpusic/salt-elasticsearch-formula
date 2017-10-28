{% from "elasticsearch/map.jinja" import es_config with context %}

include:
  - elasticsearch.repo

elasticsearch:
  pkg.installed:
    - version: {{es_config.version}}
