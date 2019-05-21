;; ace-window
(require-package 'ace-window)

(global-set-key (kbd "M-o") 'ace-window)
(setq aw-keys '(?a ?s ?d ?f ?g ?h ?j ?k ?l))
(setq aw-dispatch-always t)

;; golden-ratio
;(require-package 'golden-ratio)
;(golden-ratio-mode 1)
;(setq golden-ratio-adjust-factor .8)
;;;(add-to-list 'golden-ratio-exclude-modes 'helm-major-mode)
;(add-to-list 'golden-ratio-extra-commands 'ace-window)

;; window numbering
;;(require-package 'window-numbering)
;;(window-numbering-mode)

(provide 'init-windows)
