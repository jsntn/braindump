+++
title = "How to create OpenStack image of running instance?"
lastmod = 2022-06-27T17:10:41+08:00
tags = ["openstack"]
draft = false
+++

1.  Stop the instance from either the UI or CLI.

<!--listend-->

```sh
$ openstack server stop [instance UUID]
```

1.  Take a snapshot of the running instance.

<!--listend-->

```sh
$ openstack server image create --name [snapshot name] [instance UUID]
```

1.  List the images and identify the UUID of the snapshot using the name given during creation.

<!--listend-->

```sh
$ openstack image list
```