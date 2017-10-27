{% set repo_url = 'http://artifacts.elastic.co/packages/5.x' %}

elasticsearch_repo:
  pkgrepo.managed:
    - name: deb {{ repo_url }}/apt stable main
    - dist: stable
    - keyid: D88E42B4
    - keyserver: keyserver.ubuntu.com
    - file: /etc/apt/sources.list.d/elasticsearch.list
