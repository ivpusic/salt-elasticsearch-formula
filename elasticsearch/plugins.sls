{% set plugins_list = salt['pillar.get']('elasticsearch:plugins', {}) %}
{% set plugins_bin = '/usr/share/elasticsearch/bin/elasticsearch-plugin' %}

{% for name, repo in plugins_list.items() %}
elasticsearch-{{name}}:
  cmd.run:
    - name: {{plugins_bin}} install -b {{repo}}
    - unless: test -x /usr/share/elasticsearch/plugins/{{ name }}
{% endfor %}
