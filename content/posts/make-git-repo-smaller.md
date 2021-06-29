+++
title = "Make Git Repository Smaller"
date = 2021-06-28T00:17:00+08:00
lastmod = 2021-06-30T00:01:22+08:00
tags = ["git"]
categories = ["Git"]
draft = false
+++

## Background {#background}

> I've got a git repository that I make automated commits multiple times a day,
> but now the local git repository is getting bigger and bigger. I'm wondering
> what the easiest way would be to slim down my local repository. Is there a way
> to remove older commits to slim down my repository size?


## Solution {#solution}

1.  Get the commits which you need to keep, like the `master` branch starting
    from this year,

    ```sh
    git log --oneline --since="2021-01-01" master
    ```

    Then you will get the commits like below,

    ```sh
    d1fc497 (HEAD -> master, origin/master, origin/HEAD) message5
    ac89b87 message4
    8c3e839 message3
    d4ffc42 message2
    3f1d63a message1
    ```

    The first/older commit `3f1d63a` will be used in the following step.
2.  Checkout an orphan branch from the first commit you want to keep(as the
    commit `3f1d63a` from above):

    ```sh
    git checkout --orphan 2021 3f1d63a
    git commit -m 'init commit'
    ```

    Now the `2021` branch will only contains the commits changes starting from
    `3f1d63a`.
3.  Rebase[^fn:1] all the last commits starting from `3f1d63a` on `master` branch,
    reapply them on top of the `2021` branch, and push `2021`,

    ```sh
    git rebase --onto 2021 3f1d63a master
    git push origin 2021
    ```
4.  Remove the unused local branch, like `master` branch,

    ```sh
    git branch -D master
    ```
5.  Cleanup unnecessary files and optimize the local repository,

    ```sh
    git gc --prune=now --aggressive
    ```

    The above command will remove all refs and inaccessible commits in the
    repository which are older than two weeks. `--aggressive` will help more time
    optimizing it.
6.  Git has a feature called reflog that helps to track Git refs in the local
    repo, it has an internal garbage collection mechanism to remove old refs in
    Git, but there is also a manual mechanism to remove old refs.

    ```sh
    git reflog expire --expire=1.month.ago
    ```

    The above command will remove all refs that are older than one month, you can
    mention whatever value you feel safe.


## Reference {#reference}

-   <https://stackoverflow.com/questions/47609827/how-to-make-my-git-repo-smaller>
-   <https://stackoverflow.com/questions/2116778/reduce-git-repository-size>
-   <https://medium.com/@sangeethkumar.tvm.kpm/cleaning-up-a-git-repo-for-reducing-the-repository-size-d11fa496ba48>
-   <https://git-scm.com/docs/git-gc/>
-   <https://www.atlassian.com/git/tutorials/git-gc>
-   <https://railsware.com/blog/git-housekeeping-tutorial-clean-up-outdated-branches-in-local-and-remote-repositories/>
-   <https://devconnected.com/how-to-clean-up-git-branches/>
-   <https://nickymeuleman.netlify.app/blog/delete-git-branches>
-   <https://www.fizerkhan.com/blog/posts/clean-up-your-local-branches-after-merge-and-delete-in-github>
-   <https://gitbetter.substack.com/p/how-to-clean-up-the-git-repo-and>


## Read more {#read-more}

-   <https://support.atlassian.com/bitbucket-cloud/docs/maintain-a-git-repository/>
-   <https://stackoverflow.com/questions/34657031/how-do-you-remove-a-branch-and-all-of-its-history-locally-and-remotely>
-   <https://blog.lilydjwg.me/2011/4/22/tried-the-nuclear-option-filter-branch-of-git-the-first-time.26331.html>
-   <https://www.cnblogs.com/sdream/p/9480963.html>
-   <https://coderwall.com/p/x3jmig/remove-all-your-local-git-branches-but-keep-master>
-   <https://stackoverflow.com/questions/13064613/how-to-prune-local-tracking-branches-that-do-not-exist-on-remote-anymore>
-   <https://superuser.com/questions/283309/how-to-delete-the-git-reference-refs-original-refs-heads-master>

[^fn:1]: Refer to <https://git-scm.com/docs/git-rebase> for the `git rebase` - Reapply commits on top of another base tip.
