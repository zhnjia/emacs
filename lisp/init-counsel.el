;; projectile
;;(require-package 'counsel-projectile)
;;(counsel-projectile-on)

;; config
(require-package 'flx)
(setq ivy-re-builders-alist
      '((read-file-name-internal . ivy--regex-fuzzy)
        (t . ivy--regex-plus)))
(setq ivy-count-format "(%d/%d) ")
(setq ivy-height 20)

;; M-x
;;(global-set-key [remap execute-extended-command] 'counsel-M-x)

;; swiper
(require-package 'swiper)
(ivy-mode 1)
(setq ivy-use-virtual-buffers t)
(setq enable-recursive-minibuffers t)
(global-set-key "\C-s" 'swiper)

;; counsel
(require-package 'counsel)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(define-prefix-command 'counsel-command-map)
(global-set-key (kbd "C-x c") 'counsel-command-map)
(define-key counsel-command-map (kbd "f") 'counsel-git)
(define-key counsel-command-map (kbd "g") 'counsel-git-grep)
(define-key counsel-command-map (kbd "i") 'counsel-semantic-or-imenu)
(define-key counsel-command-map (kbd "k") 'counsel-ag)
(define-key counsel-command-map (kbd "o") 'counsel-org-capture)
(define-key counsel-command-map (kbd "l") 'counsel-outline)
(define-key counsel-command-map (kbd "r") 'ivy-resume)

;; ivy-rich
(require-package 'ivy-rich)
(ivy-rich-mode 1)
(setq ivy-rich-path-style 'abbrev)

;; ivy-hydra
;;(require-package 'ivy-hydra)

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
