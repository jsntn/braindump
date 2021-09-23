+++
title = "Emacs on Windows"
date = 2021-06-07T23:05:00+08:00
lastmod = 2021-09-23T23:52:14+08:00
tags = ["emacs"]
categories = ["Emacs"]
draft = false
+++

## Installation {#installation}

List the Emacs installation on Windows platform.


### Native Emacs {#native-emacs}


### VirtualBox with Emacs {#virtualbox-with-emacs}

-> [Emacs on Arch Linux]({{< relref "emacs-on-arch-linux" >}})


### Dockerized Emacs {#dockerized-emacs}


### Cygwin/MinGW with Emacs {#cygwin-mingw-with-emacs}


### [Chololatey]({{< relref "unix-utilities-on-windows" >}}) Software {#chololatey--unix-utilities-on-windows-dot-md--software}

```sh
choco install emacs
```


## [Unix Utilities]({{< relref "unix-utilities-on-windows" >}}) {#unix-utilities--unix-utilities-on-windows-dot-md}


## Formatter {#formatter}

Right now, I'm using Steve Purcell's [reformatter](https://github.com/purcell/emacs-reformatter) with [Prettier](https://prettier.io).


### Some Options {#some-options}

-   <https://github.com/purcell/emacs-reformatter>
-   <https://github.com/lassik/emacs-format-all-the-code>
-   Based on Prettier
    -   <https://github.com/prettier/prettier-emacs>
    -   <https://github.com/jscheid/prettier.el>
    -   <https://github.com/raxod502/apheleia>


### Install Prettier {#install-prettier}

1.  Follow [this guide]({{< relref "windows-portable-nodejs" >}}) to install portable Node.js
2.  Globally install Prettier using `npm install -g prettier`


### Read More {#read-more}

-   <https://emacs-china.org/t/reformatter/8239>
-   <https://erick.navarro.io/blog/creating-an-emacs-formatter-the-easy-way/>
-   <https://levelup.gitconnected.com/how-to-format-all-files-in-a-directory-with-prettier-5f0ff5f4ffb2>


## [Encryption]({{< relref "encryption" >}}) {#encryption--encryption-dot-md}


## Shell/Term {#shell-term}


## Debug {#debug}

If you do `M-x toggle-debug-on-error`, you should get a backtrace that might show
where the error is occurring.


## Read more {#read-more}

-   <https://www.gnu.org/software/emacs/manual/html%5Fmono/efaq-w32.html#Other-useful-ports>
-   <https://www.emacswiki.org/emacs/EmacsMsWindowsIntegration>
-   <http://ergoemacs.org/emacs/emacs%5Fenv%5Fvar%5Fpaths.html>
-   <https://emacs.stackexchange.com/questions/27326/gui-emacs-sets-the-exec-path-only-from-windows-environment-variable-but-not-from>


## Reference {#reference}
