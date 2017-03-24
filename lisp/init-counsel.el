;; projectile
(require-package 'counsel-projectile)
(counsel-projectile-on)

;; config
(require-package 'flx)
(setq ivy-re-builders-alist
      '((read-file-name-internal . ivy--regex-fuzzy)
        (t . ivy--regex-plus)))
(global-set-key (kbd "C-c k") 'counsel-ag)
(global-set-key (kbd "C-c g") 'counsel-git)
(define-key read-expression-map (kbd "C-r") 'counsel-expression-history)
(setq ivy-count-format "(%d/%d) ")

;; M-x
(global-set-key [remap execute-extended-command] 'counsel-M-x)

;; swiper
(require-package 'swiper)
(ivy-mode 1)
(setq ivy-use-virtual-buffers t)
(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "C-c r") 'ivy-resume)

;; imenu
(global-set-key (kbd "C-c i") 'counsel-imenu)

;; dash
;;(require-package 'counsel-dash)
;;(add-hook 'emacs-lisp-mode-hook (lambda () (setq-local counsel-dash-docsets '("Emacs Lisp"))))
;;(setq counsel-dash-docsets-path "~/.docset")
;;(setq counsel-dash-docsets-url "https://raw.github.com/Kapeli/feeds/master")
;;(setq counsel-dash-min-length 3)
;;(setq counsel-dash-candidate-format "%d %n (%t)")
;;(setq counsel-dash-enable-debugging nil)
;;(setq counsel-dash-browser-func 'browse-url)
;;(setq counsel-dash-ignored-docsets nil)

(provide 'init-counsel)
