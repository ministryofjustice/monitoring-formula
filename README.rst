
monitoring-formula



==================

Graphite, Sensu and Logstash monitoring stack.
Virtual states that installs them all.

Pillar variables
~~~~~~~~~~~~~~~~

- monitoring:enabled (default True)

  Used to configure whether monitoring should be enabled/installed at all.
  It's useful as client side of monitoring is an implicit dependency.


states
------

- monitoring.client
- monitoring.server
