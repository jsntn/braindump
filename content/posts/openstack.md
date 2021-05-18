+++
title = "OpenStack"
date = 2021-05-01T16:58:00+08:00
lastmod = 2021-05-19T00:52:28+08:00
draft = false
+++

## FAQ {#faq}


### <span class="org-todo todo IN_PROGRESS">IN-PROGRESS</span> How to make image? {#how-to-make-image}

For a Linux-based image to have full functionality in an OpenStack Compute
cloud, there are a few requirements. For some of these, you can fulfill the
requirements by installing the `cloud-init` package. Read this section before you
create your own image to be sure that the image supports the OpenStack features
that you plan to use.

-   Disk partitions and resize root partition on boot (`cloud-init`)

    When you create a Linux image, you must decide how to partition the disks. The
    choice of partition method can affect the resizing functionality, as described
    in the following sections.

    The size of the disk in a virtual machine image is determined when you
    initially create the image. However, OpenStack lets you launch instances with
    different size drives by specifying different flavors. For example, if your
    image was created with a 5 GB disk, and you launch an instance with a flavor
    of `m1.small`. The resulting virtual machine instance has, by default, a
    primary disk size of 20 GB. When the disk for an instance is resized up, zeros
    are just added to the end.

    Your image must be able to resize its partitions on boot to match the size
    requested by the user. Otherwise, after the instance boots, you must manually
    resize the partitions to access the additional storage to which you have
    access when the disk size associated with the flavor exceeds the disk size
    with which your image was created.

-   No hard-coded MAC address information
-   SSH server running
-   Disable firewall
-   Access instance using ssh public key (`cloud-init`)
-   Process user data and other metadata (`cloud-init`)
-   Paravirtualized Xen support in Linux kernel (Xen hypervisor only with Linux
    kernel version < 3.0)


#### Reference {#reference}

-   [Image requirements](https://docs.openstack.org/image-guide/openstack-images.html)


### <span class="org-todo todo TODO">TODO</span> What is the Cloud Image? {#what-is-the-cloud-image}


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
