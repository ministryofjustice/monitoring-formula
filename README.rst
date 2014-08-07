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

Usage
=====

.. image:: https://raw.githubusercontent.com/ministryofjustice/monitoring-formula/OMGDOCS/monitoring-server.png


Server
------

Firewall
~~~~~~~~

The monitoring server requires the following ports to be open incoming from the clients:


* 2003
* 2513
* 5762
* 6379
* 80
  

Dependencies
~~~~~~~~~~~~

The server requires the following states to be included:

* metrics.server
* logstash.server
* sensu.server



Client
------

On the client side (the instances that will ship logs to the monitoring server) we need the following:

Dependencies
~~~~~~~~~~~~

The server requires the following states to be included along side this one:

* metrics.client
* logstash.client
* sensu.client


Hosts File
~~~~~~~~~

  [internal IP of monitoring server] monitoring.local graphite.local

