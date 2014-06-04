{% if 'monitoring' in grains %}
include:
  - sensu.client
  - metrics.client
  - logstash.client
{% endif %}
