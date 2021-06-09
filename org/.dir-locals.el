;;; Directory Local Variables
;;; For more information see (info "(emacs) Directory Variables")

(
 (nil . (
	 ;; https://stackoverflow.com/a/11474657/4274775
	 (eval . (set (make-local-variable 'my-project-path)
		      (file-name-directory
		       (let ((d (dir-locals-find-file "./")))
			 (if (stringp d) d (car d))))))
	 (eval . (setq org-roam-directory my-project-path))
	 (eval . (message "org-roam-directory set to `%s'." my-project-path))
	 (org-roam-db-location . "./org-roam.db")
	 ;; https://www.reddit.com/r/emacs/comments/8wwcgx/modehook_in_dirlocalsel_not_being_run/
	 (org-mode . (org-roam-mode . t))
	 ))
 (org-mode . ((eval . (org-hugo-auto-export-mode))))
 (org-mode . ((org-hugo-base-dir . "..")))
 ("daily" . ((org-hugo-base-dir . nil)))
 )
