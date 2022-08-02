+++
title = "How to create OpenStack image of running instance?"
lastmod = 2022-08-02T17:37:43+08:00
tags = ["openstack"]
draft = false
+++

1.  Stop the instance from either the UI or CLI.
    ```sh
    $ openstack server stop [instance UUID]
    ```

2.  Take a snapshot of the running instance.
    ```sh
    $ openstack server image create --name [snapshot name] [instance UUID]
    ```

3.  List the images and identify the UUID of the snapshot using the name given during creation.
    ```sh
    $ openstack image list
    ```