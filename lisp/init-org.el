
(setq org-agenda-files '("~/Workspace/doc/works.org"))

(setq org-capture-templates
      '(("t" "Todo" entry (file+headline "~/Workspace/doc/works.org" "Tasks")
         "* TODO %?\n  %i\n")))

;; org todo
;;(setq org-todo-keywords
;;      '((sequence "TODO(t)" "|" "DONE(d)")
;;        (sequence "REPORT(r)" "BUG(b)" "KNOWNCAUSE(k)" "|" "FIXED(f)")
;;        (sequence "|" "CANCELED(c)")))

;;(setq org-log-done 'note)

;;(defun org-summary-todo (n-done n-not-done)
;;  "Switch entry to DONE when all subentries are done, to TODO otherwise."
;;  (let (org-log-done org-log-states)   ; turn off logging
;;    (org-todo (if (= n-not-done 0) "DONE" "TODO"))))
;;
;;(add-hook 'org-after-todo-statistics-hook 'org-summary-todo)

;; Set to the location of your Org files on your local system
(setq org-directory "~/Org")
;; Set to the name of the file where new notes will be stored
(setq org-mobile-inbox-for-pull "~/Workspace/doc/works.org")
;; Set to <your Dropbox root directory>/MobileOrg.
(setq org-mobile-directory "~/Dropbox/Apps/MobileOrg")

(provide 'init-org)
