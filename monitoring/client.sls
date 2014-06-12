{% if pillar.get('monitoring:enabled',True) %}
include:
  - sensu.client
  - metrics.client
  - logstash.client
{% endif %}
