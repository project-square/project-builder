# Project-builder

## Instance

## Load balancer

### lb-udp-kamailio
* Backend configuration
  * Instances: kamailios
  * Health check:

* Frontend configuration
  * Protocol: UDP
  * Port: 5060

### lb-udp-rtpengine-internal
Internal load balancer

* Backend configuration
  * Instance group: rtpengines
  * health check: rtpengine tcp 25060

* Frontend configuration
  * Port: 2223
