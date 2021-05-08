+++
title = "Timeshift on Ubuntu"
date = 2021-05-08T23:55:00+08:00
lastmod = 2021-05-09T00:25:33+08:00
draft = false
+++

## Installation {#installation}

```sh
sudo add-apt-repository -y ppa:teejee2008/timeshift
sudo apt-get update
sudo apt-get install timeshift
```

via [link](https://github.com/teejee2008/timeshift)


## Operations {#operations}

```sh
sudo timeshift --create
sudo timeshift --list
sudo timeshift --restore --snapshot "2020-02-19_18-32-36"
sudo timeshift --delete  --snapshot '2014-10-12_16-29-08'
```

via [link](https://web.archive.org/web/20210508154916/https://goto-linux.com/zh-cn/2019/7/29/ubuntu-20.04%E7%B3%BB%E7%BB%9F%E5%A4%87%E4%BB%BD%E5%92%8C%E8%BF%98%E5%8E%9F/)


## Read More {#read-more}

-   [Restore the snapshot on Linux](https://web.archive.org/web/20210508155818/https://www.cnblogs.com/linuxprobe/p/5399144.html)
