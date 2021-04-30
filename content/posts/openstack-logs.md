+++
title = "OpenStack Logs"
date = 2021-05-01
lastmod = 2021-05-01T01:20:53+08:00
draft = false
+++

## Keystone Logs {#keystone-logs}

```sh
/var/log/apache2/keystone.log
/var/log/apache2/keystone_access.log
```

If you would like to check more detailed logs, go enable the `debug` option in
`/etc/keystone/keystone.conf`.


## Glance Logs {#glance-logs}

```sh
/var/log/apache2/glanceapi.log
/var/log/apache2/glanceregistry.log
```

If you would like to check more detailed logs, go enable the `debug` option in
`/etc/glance/*.conf`.
