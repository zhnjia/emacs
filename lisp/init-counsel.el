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
(global-set-key (kbd "C-c M-r") 'ivy-resume)

;; imenu
(global-set-key (kbd "C-c M-i") 'counsel-imenu)

(provide 'init-counsel)
