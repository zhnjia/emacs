;; projectile
(require-package 'counsel-projectile)
(counsel-projectile-on)

;; config
(require-package 'flx)
(setq ivy-re-builders-alist
      '((t . ivy--regex-fuzzy)))

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
