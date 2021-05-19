+++
title = "OpenStack"
date = 2021-05-01T16:58:00+08:00
lastmod = 2021-05-19T11:48:55+08:00
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

    Depending on your distribution, the simplest way to support this is to install in your image:

    -   the `cloud-init` package
    -   the `cloud-utils` package, which, on Ubuntu and Debian, also contains the
        `growpart` tool for extending partitions

    With these packages installed, the image performs the root partition resize on
    boot. For example, in the `/etc/rc.local` file.

    If you can install the `cloud-init` and `cloud-utils` packages, we recommend that
    when you create your images, you create a single ext3 or ext4 partition (not
    managed by LVM).

    ---
    Reference:

    -   [How to expand storage ( /dev/vda1 ) so it takes up the entire disk](https://web.archive.org/web/20210519031325/https://support.binarylane.com.au/support/solutions/articles/11000015259-how-to-expand-storage-dev-vda1-so-it-takes-up-the-entire-disk)
-   No hard-coded MAC address information

    You must remove the network persistence rules in the image because they cause
    the network interface in the instance to come up as an interface other than
    eth0. This is because your image has a record of the MAC address of the
    network interface card when it was first installed, and this MAC address is
    different each time the instance boots. You should alter the following files:

    -   Replace `/etc/udev/rules.d/70-persistent-net.rules` with an empty file
        (contains network persistence rules, including MAC address).
    -   Replace `/lib/udev/rules.d/75-persistent-net-generator.rules` with an empty
        file (this generates the file above).
    -   Remove the HWADDR line from `/etc/sysconfig/network-scripts/ifcfg-eth0` on
        Fedora-based images.

    Note: If you delete the network persistent rules files, you may get a `udev kernel` warning at boot time, which is why we recommend replacing them with empty files instead.
-   SSH server running
    -   [Ubuntu Linux install OpenSSH server](https://www.cyberciti.biz/faq/ubuntu-linux-install-openssh-server/)
-   Disable firewall

    ```sh
    $ sudo ufw status
    [sudo] password for linuxconfig:
    Status: inactive
    ```
-   Access instance using ssh public key (`cloud-init`)
-   Process user data and other metadata (`cloud-init`)
-   Paravirtualized Xen support in Linux kernel (Xen hypervisor only with Linux
    kernel version < 3.0)
-   Delete the terminal command history
    -   [How To Clear Shell History In Ubuntu Linux](https://www.cyberciti.biz/faq/clear-the-shell-history-in-ubuntu-linux/)
-   Wipe free disk space
    -   [Export small .qcow file](https://web.archive.org/web/20210519033818/https://blog.csdn.net/skydust1979/article/details/108164067)
    -   [How to wipe free disk space in Linux?](https://superuser.com/questions/19326/how-to-wipe-free-disk-space-in-linux)
    -   [How to wipe a hard drive clean in Linux?](https://how-to.fandom.com/wiki/How%5Fto%5Fwipe%5Fa%5Fhard%5Fdrive%5Fclean%5Fin%5FLinux)


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
