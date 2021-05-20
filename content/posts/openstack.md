+++
title = "OpenStack"
date = 2021-05-01T16:58:00+08:00
lastmod = 2021-05-20T23:18:27+08:00
tags = ["openstack"]
draft = false
+++

## FAQ {#faq}

-   [How to make image?]({{< relref "how-to-make-image" >}})


## TODO {#todo}


### What is the Cloud Image? {#what-is-the-cloud-image}


### Boot an instance from an ISO image {#boot-an-instance-from-an-iso-image}

<https://docs.openstack.org/ocata/user-guide/cli-nova-launch-instance-using-ISO-image.html>


## Troubleshooting {#troubleshooting}

The main troubleshooting method about OpenStack is checking through the [logs]({{< relref "openstack-logs" >}}).


## Network {#network}


### What is physical network in OpenStack? {#what-is-physical-network-in-openstack}

The OpenStack Networking services can either run together on the same physical
server, or on separate dedicated servers, which are named according to their
roles:

-   Controller node - The server that runs API service.
-   Network node - The server that runs the OpenStack Networking agents.


### L2GW {#l2gw}
