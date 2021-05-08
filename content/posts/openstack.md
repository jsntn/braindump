+++
title = "OpenStack"
date = 2021-05-01T16:58:00+08:00
lastmod = 2021-05-09T00:28:19+08:00
draft = false
+++

## FAQ {#faq}


### <span class="org-todo todo TODO">TODO</span> How to make image? {#how-to-make-image}


### <span class="org-todo todo TODO">TODO</span> What is Cloud Image? {#what-is-cloud-image}


### Boot an instance from an ISO image {#boot-an-instance-from-an-iso-image}

<https://docs.openstack.org/ocata/user-guide/cli-nova-launch-instance-using-ISO-image.html>


## Troubleshooting {#troubleshooting}

The main troubleshooting method about OpenStack is checking through the [logs]({{< relref "openstack-logs" >}}).


## Network {#network}


### What is physical network in OpenStack? {#what-is-physical-network-in-openstack}

The OpenStack Networking services can either run together on the same physical
server, or on separate dedicated servers, which are named according to their
roles: Controller node - The server that runs API service. Network node - The
server that runs the OpenStack Networking agents.


### L2GW {#l2gw}
