
(setq org-agenda-files '("~/Workspace/doc/works.org"))

;; org-capture-templates
(setq org-capture-templates
      '(("t" "General Todo" entry (file+headline "~/Workspace/doc/works.org" "Tasks")
         "** TODO [#A] %?\n")
        ("a" "ADX tasks" entry (file+olp "~/Workspace/doc/works.org" "Tasks" "AdTech" "ADX")
         "**** TODO [#A] %?\n")
        ("m" "Mytarget tasks" entry (file+olp "~/Workspace/doc/works.org" "Tasks" "AdTeck" "Mytarget")
         "**** TODO [#A] %?\n")
        ("y" "Yandex tasks" entry (file+olp "~/Workspace/doc/works.org" "Tasks" "AdTech" "Yandex")
         "**** TODO [#A] %?\n")
        ("f" "Fyber tasks" entry (file+olp "~/Workspace/doc/works.org" "Tasks" "AdTech" "Fyber")
         "**** TODO [#A] %?\n")
        ("b" "Facebook tasks" entry (file+olp "~/Workspace/doc/works.org" "Tasks" "AdTech" "Facebook")
         "**** TODO [#A] %?\n")
        ("g" "Generic ADs tasks" entry (file+olp "~/Workspace/doc/works.org" "Tasks" "AdTech" "Generic")
         "**** TODO [#A] %?\n")))

(setq org-agenda-window-setup (quote current-window))

# COOKIE_DATA
(setq org-hierarchical-checkbox-statistics t)

;; plantuml
;; active Org-babel languages
(org-babel-do-load-languages
 'org-babel-load-languages
 '(;; other Babel languages
   (plantuml . t)))

(setq org-plantuml-jar-path
      (expand-file-name "~/Pkg/plantuml.jar"))

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

(custom-set-variables
 '(org-enforce-todo-dependencies t)
 '(org-agenda-dim-blocked-tasks t))

(setq org-log-note-headings '((done        . "CLOSING NOTE %t")
                              (state       . "State %-12s from %-12S %t")
                              (note        . "Note taken on %T")
                              (reschedule  . "Schedule changed on %t: %S -> %s")
                              (delschedule . "Not scheduled, was %S on %t")
                              (redeadline  . "Deadline changed on %t: %S -> %s")
                              (deldeadline . "Removed deadline, was %S on %t")
                              (refile      . "Refiled on %t")
                              (clock-out   . "")))

(define-prefix-command 'org-command-map)
(global-set-key (kbd "C-c o") 'org-command-map)
(define-key org-command-map (kbd "t") 'org-todo-list)
(define-key org-command-map (kbd "c") 'org-capture)
(define-key org-command-map (kbd "a") 'org-agenda)
(define-key org-command-map (kbd "p") 'org-priority)

(provide 'init-org)
