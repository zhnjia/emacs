;; ace-window
(require-package 'ace-window)

(global-set-key (kbd "M-p") 'ace-window)
(setq aw-keys '(?a ?s ?d ?f ?g ?h ?j ?k ?l))
(setq aw-dispatch-always t)

(require-package 'golden-ratio)
(golden-ratio-mode 1)
(setq golden-ratio-adjust-factor .8)
(add-to-list 'golden-ratio-exclude-modes 'helm-mode)
(add-to-list 'golden-ratio-extra-commands 'ace-window)

;; window numbering
;;(require-package 'window-numbering)
;;(window-numbering-mode)


(provide 'init-ace-window)
