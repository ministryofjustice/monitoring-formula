{% if pillar.get('monitoring') %}
include:
  - sensu.client
  - metrics.client
  - logstash.client
{% endif %}
