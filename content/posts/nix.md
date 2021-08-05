+++
title = "Nix"
date = 2021-08-05T09:36:00+08:00
lastmod = 2021-08-05T09:38:20+08:00
draft = false
+++

Nix is a tool that takes a unique approach to package management and system
configuration.

-> <https://nixos.org>


## Reproducible {#reproducible}

Nix builds packages in isolation from each other. This ensures that they are
reproducible and don't have undeclared dependencies, so if a package works on
one machine, it will also work on another.


## Declarative {#declarative}

Nix makes it trivial to share development and build environments for your
projects, regardless of what programming languages and tools you’re using.


## Reliable {#reliable}

Nix ensures that installing or upgrading one package cannot break other
packages. It allows you to roll back to previous versions, and ensures that no
package is in an inconsistent state during an upgrade.
