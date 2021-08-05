+++
title = "GitHub Emacs Action"
date = 2021-08-04T18:05:00+08:00
lastmod = 2021-08-05T09:35:58+08:00
draft = false
+++

This is a GitHub Action example to set up Emacs with your packages.

Since that Emacs setup uses [Nix]({{< relref "nix" >}}), Nix will be installed automatically if
necessary, along with the "cachix" tool which enables downloads of the cached
binaries. ([via](https://github.com/purcell/setup-emacs))

-> <https://github.com/jsntn/emacs-actions>


## The 'ox-publish' case {#the-ox-publish-case}

-> <https://github.com/jsntn/emacs-actions/tree/ox-publish>

It uses GitHub Action [@peaceiris/actions-gh-pages](https://github.com/peaceiris/actions-gh-pages) to deploy static files to
GitHub Pages. This deploy action can be combined simply and freely with Static
Site Generators. (Hugo, MkDocs, Gatsby, mdBook, Next, Nuxt, and so on.)

The 'ox-publish' package is managed and configured in [config.el](https://github.com/jsntn/emacs-actions/blob/18e45d1a0f40b4fdffaf0b98ead9b8d451794ecd/scripts/config.el).


## The `org-html-export-to-html` case {#the-org-html-export-to-html-case}

-> <https://github.com/jsntn/emacs-actions/tree/org-to-html>

A 'gh-pages' deployment use case can be found from [here](https://github.com/blurtOut/bo1/blob/c2d93fc614f55b1e260dd499dabf8b6b429f4d92/.github/workflows/main.yml#L27).


## Demo {#demo}

-   <https://github.com/jsntn/note.jsntn.com>
-   <https://github.com/giveupenglishOrg/sse.lyce.info>
-   <https://github.com/blurtOut/bo1>
