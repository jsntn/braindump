+++
title = "VeraCrypt on MacOS"
date = 2021-06-09T17:33:00+08:00
lastmod = 2021-07-01T17:48:30+08:00
draft = false
+++

## How to execute veracrypt command line? {#how-to-execute-veracrypt-command-line}

The command is actually `/Applications/VeraCrypt.app/Contents/MacOS/VeraCrypt`.

While there should always be an elegant way to use it!<br />
You can set up a symbolic link named `veracrypt` to the executable. The following will work in a terminal,

```sh
mkdir -p ~/bin ; # <<-- if it doesn't exist already
ln -s /Applications/VeraCrypt.app/Contents/MacOS/VeraCrypt ~/bin/veracrypt
```

You can then invoke it to get help with (the `-t` is for text-only mode):

```sh
PATH="$HOME/bin:$PATH" ; # <<-- if not already on your search path
veracrypt -t -h
```

Start using it, like:

```sh
veracrypt -m ro -k <keyfile> <volume> # mount the volume with keyfile in read-only mode
```


## Reference {#reference}

-   <https://apple.stackexchange.com/questions/230520/how-to-execute-veracrypt-on-the-command-line>
-   <https://sourceforge.net/p/veracrypt/discussion/technical/thread/5dfac090/>
