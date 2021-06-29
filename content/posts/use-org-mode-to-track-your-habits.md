+++
title = "Use Org-mode to track your habits"
date = 2021-06-29T12:49:00+08:00
lastmod = 2021-06-29T15:03:59+08:00
draft = false
+++

## Setup {#setup}

```lisp
; keep track of when a certain TODO item was marked as done
(setq org-log-done 'time)
; record a note along with the timestamp
(setq org-log-done 'note)
; reference:
; ... https://orgmode.org/guide/Progress-Logging.html
; ... https://www.gnu.org/software/emacs/manual/html_node/org/Closing-items.html

(require 'org-habit)
;; log into LOGBOOK drawer
(setq org-log-into-drawer t)
```


## Habit properties {#habit-properties}

A habit has the following properties:

1.  The habit is a TODO item, with a TODO keyword representing an open state.

2.  The property 'STYLE' is set to the value 'habit'. To set something as a
    habit, use `C-c C-x p` (`org-set-property`) to set the `STYLE` property to
    `habit`.

3.  The TODO has a scheduled date, usually with a `.+` style repeat interval. A
    `++` style may be appropriate for habits with time constraints, e.g., must be
    done on weekends, or a `+` style for an unusual habit that can have a
    backlog, e.g., weekly reports.
4.  The TODO may also have minimum and maximum ranges specified by using the
    syntax `.+2d/3d`, which says that you want to do the task at least every
    three days, but at most every two days.
5.  State logging for the DONE state is enabled, in order for historical
    data to be represented in the consistency graph. If it is not enabled it is
    not an error, but the consistency graphs are largely meaningless.

To give you an idea of what the above rules look like in action, here's an
actual habit with some history:

```lisp
** TODO Shave
   SCHEDULED: <2009-10-17 Sat .+2d/4d>
   :PROPERTIES:
   :STYLE:    habit
   :LAST_REPEAT: [2009-10-19 Mon 00:36]
   :END:
   - State "DONE"       from "TODO"       [2009-10-15 Thu]
   - State "DONE"       from "TODO"       [2009-10-12 Mon]
   - State "DONE"       from "TODO"       [2009-10-10 Sat]
   - State "DONE"       from "TODO"       [2009-10-04 Sun]
   - State "DONE"       from "TODO"       [2009-10-02 Fri]
   - State "DONE"       from "TODO"       [2009-09-29 Tue]
   - State "DONE"       from "TODO"       [2009-09-25 Fri]
   - State "DONE"       from "TODO"       [2009-09-19 Sat]
   - State "DONE"       from "TODO"       [2009-09-16 Wed]
   - State "DONE"       from "TODO"       [2009-09-12 Sat]
```


## Graph show {#graph-show}

The 'Org agenda view' displays habits that are due today, indicating consistency
with colour. In particular, it shows overdue days in red, so you can get the
Seinfeld-esque pleasure/commitment-device of [not breaking the chain](https://lifehacker.com/jerry-seinfelds-productivity-secret-281626).


## Reference {#reference}

-   <https://sachachua.com/blog/2012/05/org-mode-and-habits/>
-   <https://orgmode.org/manual/Tracking-your-habits.html>


## Read more {#read-more}

-   <https://sachachua.com/blog/2013/06/how-i-use-emacs-org-mode-for-my-weekly-reviews/>
