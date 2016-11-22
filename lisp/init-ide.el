;;====================================================================
;; Projectile
(require-package 'projectile)
(require-package 'yasnippet)
;;(require-package 'helm-projectile)
;;(setq projectile-indexing-method 'native)
;;(setq projectile-enable-caching t)

(defvar my-project-name nil)
(put 'my-project-name 'safe-local-variable #'stringp)

(defun projectile-project-name--prefer-mine (orig-fun &rest args)
  (or my-project-name (apply orig-fun args)))

(advice-add 'projectile-project-name :around #'projectile-project-name--prefer-mine)

(projectile-global-mode)

;;(helm-projectile-on)

;; for programming language
(add-hook 'c-mode-common-hook
          (lambda()
            (set-fill-column 80)))

(require 'google-c-style)
(add-hook 'c-mode-common-hook 'google-set-c-style)
(c-add-style "WebKit" '("Google"
                        (c-basic-offset . 4)
                        (c-offsets-alist . ((innamespace . 0)
                                            (access-label . -)
                                            (case-label . 0)
                                            (member-init-intro . +)
                                            (topmost-intro . 0)))))

(add-hook 'java-mode-hook
          (lambda()
            (set-fill-column 100)
            (setq c-basic-offset 4)))

(add-hook 'prog-mode-hook
          (lambda()
            (fci-mode)
            (setq c-basic-offset 4)
            (semantic-mode)
            (global-semantic-highlight-func-mode)
            ;;(aggressive-indent-mode)
            (yas-global-mode 1)
            ))

(add-hook 'before-save-hook 'delete-trailing-whitespace)

(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))
;;(add-to-list 'default-frame-alist '(font .  "Source Code Pro-10"))
(set-face-attribute 'default nil
                    :family "Source Code Pro"
                    :height 105
                    :weight 'normal
                    :width 'normal)

(require-package 'rainbow-delimiters)
(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)

;;====================================================================
;; zeal
(require-package 'zeal-at-point)
(global-set-key "\C-cz" 'zeal-at-point)
;;(add-to-list 'zeal-at-point-mode-alist '(java-mode . "android"))

(provide 'init-ide)
