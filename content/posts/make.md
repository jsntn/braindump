+++
title = "How to use `make`?"
date = 2021-06-05T23:23:00+08:00
lastmod = 2021-06-05T23:28:58+08:00
draft = false
+++

A `Makefile` example,

```sh
ABC.tar.gz.md5: ABC.tar.gz
      md5sum ABC.tar.gz > ABC.tar.gz.md5

ABC.tar.gz:
      tar -czf ABC.tar.gz ABC/
```

---
Reference:

-   <http://www.ruanyifeng.com/blog/2015/02/make.html>
