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
(require 'init-grep)
(require 'init-paredit)
(require 'init-lisp)
(require 'init-mu4e)

;;Company
(require-package 'company)

;;Productitivity
(require-package 'window-numbering)
(window-numbering-mode t)
(require-package 'rainbow-delimiters)
(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)
(require-package 'expand-region)
(require-package 'undo-tree)
(require-package 'projectile)
(require-package 'yasnippet)
;;(require-package 'smartparens)
(require-package 'ggtags)
(require-package 'goto-chg)

(add-to-list 'load-path "/usr/local/share/emacs/site-lisp/mu4e")
(require 'mu4e)

;;other
(setq fci-rule-color "darkred")
(setq default-cursor-type 'bar)
(defalias 'yes-or-no-p 'y-or-n-p)
(add-hook 'c-mode-common-hook
 (lambda()
  (set-fill-column 80)))
(add-hook 'java-mode-hook
 (lambda()
  (set-fill-column 100)))
(add-hook 'after-init-hook
	  (lambda()
	    (global-company-mode)))
(add-hook 'prog-mode-hook
	  (lambda()
            (fci-mode)
	    (projectile-global-mode)
            (aggressive-indent-mode)
	    (ggtags-mode)))

(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))
(add-to-list 'default-frame-alist '(font .  "Ubuntu Mono-12"))
;;(set-face-attribute 'default t :font  "Ubuntu Mono-12")

(require-package 'elfeed)
(setq elfeed-feeds
      '("http://www.geekfan.net/feed/"
        "http://www.blackberryfans.com/portal.php?mod=rss"
        "http://songshuhui.net/feed"
        "http://blog.jobbole.com/feed"
        "http://www.techug.com/feed"))

(when (file-exists-p (expand-file-name "init-local.el" user-emacs-directory))
  (error "Please move init-local.el to ~/.emacs.d/lisp"))
(require 'init-local nil t)

