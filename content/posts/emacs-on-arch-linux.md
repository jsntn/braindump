+++
title = "Emacs on Arch Linux"
date = 2021-06-08T23:10:00+08:00
lastmod = 2021-06-08T23:33:46+08:00
draft = false
+++

## Arch Linux with Emacs {#arch-linux-with-emacs}

Boot the VM on Arch Linux iso and then run the command,

```sh
wget https://raw.githubusercontent.com/jsntn/spartan-arch/my-version/install.sh -O install.sh
bash install.sh [user] [password] [fast]
```

All arguments are optional and will be prompted for if not passed on invocation:

-   `[user]` is your username
-   `[password]` is what you want the root and user password to be
-   `[fast]` is boolean 1 or 0 and controls using rankmirrors during set up which
    will be slow

The `install.sh` script will run and then reboot the computer once done.

-> <https://github.com/jsntn/spartan-arch/tree/my-version>


## Install Packages {#install-packages}


## Load Linux dotfiles {#load-linux-dotfiles}
