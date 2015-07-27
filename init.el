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
(require 'init-ido)
(require 'init-org)
(require 'init-git)
(require 'init-dash)

(require-package 'diminish)
(require 'init-isearch)
(require 'init-editing-utils)

;;Theme
(require-package 'zenburn-theme)
(load-theme 'zenburn t)

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

;;other
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
	    (ggtags-mode)))


(add-to-list 'default-frame-alist '(font .  "Ubuntu Mono-12"))
;(set-face-attribute 'default t :font  "Ubuntu Mono-12")
