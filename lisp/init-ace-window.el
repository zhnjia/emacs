(require-package 'ace-window)

(global-set-key (kbd "M-p") 'ace-window)
(setq aw-keys '(?a ?s ?d ?f ?g ?h ?j ?k ?l))
(ace-window-display-mode t)
(setq aw-dispatch-always t)

(provide 'init-ace-window)
