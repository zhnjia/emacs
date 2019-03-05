;;====================================================================
(require-package 'yasnippet)

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
                                            (topmost-intro . 0)
                                            (arglist-cont-nonempty . +)))))

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

;; (add-hook 'before-save-hook 'delete-trailing-whitespace)

(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))
;;(add-to-list 'default-frame-alist '(font .  "Source Code Pro-10"))
(set-face-attribute 'default nil
                    :family "Hack"
                    :height 100
                    :weight 'extra-light
                    :width 'condensed)

(require-package 'rainbow-delimiters)
(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)

;;====================================================================
;; zeal
;;(require-package 'zeal-at-point)
;;(global-set-key "\C-cz" 'zeal-at-point)
;;(add-to-list 'zeal-at-point-mode-alist '(java-mode . "android"))

(require-package 'groovy-mode)
(add-to-list 'auto-mode-alist '("\\.groovy\\'" . groovy-mode))

;; Printer
(setq ps-multibyte-buffer 'bdf-font-except-latin)
;; sudo apt-get install emacs-intl-fonts
;; 在 ubuntu 里字体的位置不是默认的/usr/local/share/emacs/fonts/bdf
;; 而是/usr/share/emacs/fonts/bdf
(add-to-list 'bdf-directory-list "/usr/share/emacs/fonts/bdf")
(setq ps-font-family 'Courier)
(setq ps-paper-type 'a4)

(provide 'init-ide)
