+++
title = "Org-mode Repeated Tasks"
date = 2021-06-29T12:43:00+08:00
lastmod = 2021-07-13T15:31:48+08:00
draft = false
+++

## Repeated tasks {#repeated-tasks}

Some tasks need to be repeated again and again, this is called 'Repeated Tasks'
here.


## The `repeater` {#the-repeater}

Org mode helps to organize repeated tasks using a so-called repeater in a
'DEADLINE', 'SCHEDULED', or plain timestamps. In the following example:

```sh
** TODO Pay the rent
   DEADLINE: <2005-10-01 Sat +1m>
```

the `+1m` is a repeater; the intended interpretation is that the task has a
deadline on '<span class="timestamp-wrapper"><span class="timestamp">&lt;2005-10-01 Sat&gt;</span></span>' and repeats itself every (one) month starting from
that time. You can use yearly, monthly, weekly, daily and hourly repeat cookies
by using the `y`, `m`, `w`, `d` and `h` letters[^fn:1]. If you need
both a repeater and a special warning period in a deadline entry, the repeater
should come first and the warning period last,

```sh
DEADLINE: <2005-10-01 Sat +1m -3d>
```

| Repeater | Interpretation                                                                                                                                                                    |
|----------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| `.+xy`   | repeat in x h/d/w/m/y from the last time I marked it done                                                                                                                         |
| `++xy`   | repeat in at least x h/d/w/m/y from the last time I marked it done, And keep it on the same day of the week move the due date into the future by increments of h/d/w/m/y. [^fn:2] |


## Tracking your habits {#tracking-your-habits}

-> [Use Org-mode to track your habits]({{< relref "use-org-mode-to-track-your-habits" >}})


## Reference {#reference}

-   <https://orgmode.org/manual/Repeated-tasks.html>
-   <https://victor72.github.io/blog/2016/06/20/with-org-page-manage-lives/>


## Read more {#read-more}

-   <https://orgmode.org/manual/Tracking-your-habits.html>
-   <https://sspai.com/post/61282>

[^fn:1]: There does not seem to be support for hourly repeater(at least yet for Org 9.3). ([via](https://stackoverflow.com/questions/8781310/emacs-org-mode-scheduling-an-item-multiple-times-a-day))
[^fn:2]: If the due date, after being moved forward x h/d/w/m/y is still in the past, adjust it by however many h/d/w/m/y needed to get it into the future. For the w, the day of the week is kept constant. ([via](https://www.reddit.com/r/orgmode/comments/hr2ytg/difference%5Fbetween%5Fthe%5Frepeaters%5Forgzly/fy2izqx?utm%5Fsource=share&utm%5Fmedium=web2x&context=3))
