
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

(if (fboundp 'with-eval-after-load)
     (defalias 'after-load 'with-eval-after-load)
       (defmacro after-load (feature &rest body)
            "After FEATURE is loaded, evaluate BODY."
                (declare (indent defun))
                    `(eval-after-load ,feature
                               '(progn ,@body))))

;;Bootstrap config
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(require 'init-elpa)

;;Theme
(require-package 'solarized-theme)
(load-theme 'solarized-dark t)

(require 'init-ido)
(require 'init-org)
(require 'init-git)
(require 'init-dash)

(require-package 'diminish)
(require 'init-isearch)
(require 'init-editing-utils)

(require-package 'wgrep)
(require 'init-paredit)
(require 'init-lisp)
;;(require 'init-mu4e)
(require 'init-helm)
(require 'init-projectile)

;;Company
(require 'init-company)

;;(require 'init-perspective)

;;auto-complete
;;(require 'init-ac)

;;Productitivity
(require 'init-ace-window)
(require-package 'rainbow-delimiters)
(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)
(require-package 'expand-region)
(require-package 'undo-tree)
(require-package 'yasnippet)
(require-package 'goto-chg)
(require-package 'json-reformat)

;; window numbering
;;(require-package 'window-numbering)
;;(window-numbering-mode)

(require-package 'golden-ratio)
(golden-ratio-mode 1)
(setq golden-ratio-adjust-factor .8)
(add-to-list 'golden-ratio-exclude-buffer-names "*helm projectile*")
(add-to-list 'golden-ratio-extra-commands 'ace-window)

;; powerline
(require-package 'powerline)
(powerline-default-theme)

;;(add-to-list 'load-path "/usr/local/share/emacs/site-lisp/mu4e")
;;(require 'mu4e)

;;other
(setq fci-rule-color "darkred")
(setq default-cursor-type 'bar)
(defalias 'yes-or-no-p 'y-or-n-p)
(add-hook 'c-mode-common-hook
 (lambda()
  (set-fill-column 80)))
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
            (yas-global-mode)))
(add-hook 'before-save-hook 'delete-trailing-whitespace)

(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))
;;(add-to-list 'default-frame-alist '(font .  "Source Code Pro-10"))
(set-face-attribute 'default nil
                    :family "Source Code Pro"
                    :height 105
                    :weight 'normal
                    :width 'normal)

(when (file-exists-p (expand-file-name "init-local.el" user-emacs-directory))
  (error "Please move init-local.el to ~/.emacs.d/lisp"))
(require 'init-local nil t)

(require 'init-alias)

(require-package 'org-bullets)
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))

(require 'init-swiper)

(require 'google-c-style)
(add-hook 'c-mode-common-hook 'google-set-c-style)
(c-add-style "WebKit" '("Google"
                        (c-basic-offset . 4)
                        (c-offsets-alist . ((innamespace . 0)
                                            (access-label . -)
                                            (case-label . 0)
                                            (member-init-intro . +)
                                            (topmost-intro . 0)))))

(setq shell-file-name "/usr/bin/zsh")

(require-package 'markdown-mode)

(require 'multi-term)
(setq multi-term-program "/usr/bin/zsh")
