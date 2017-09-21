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
;;(require-package 'solarized-theme)
;;(load-theme 'solarized-dark t)
;;(load-theme 'misterioso)
(require-package 'madhat2r-theme)
(load-theme 'madhat2r t)

(require 'init-org)
(require 'init-git)

(require-package 'diminish)
(require 'init-isearch)
(require 'init-editing-utils)

;;(require-package 'wgrep)
(require 'init-paredit)
(require 'init-lisp)
;;(require 'init-mu4e)
;;(require 'init-helm)
(require 'init-counsel)
(require 'init-ide)

;;Company
(require 'init-company)
(require 'init-ycmd)

;;(require 'init-perspective)

;;auto-complete
;;(require 'init-ac)

;;Productitivity
(require 'init-windows)
(require-package 'expand-region)
(require-package 'undo-tree)
(require-package 'goto-chg)
(require-package 'json-reformat)

;; powerline
(require-package 'powerline)
(powerline-default-theme)

;;other
(setq fci-rule-color "darkred")
(setq default-cursor-type 'bar)
(defalias 'yes-or-no-p 'y-or-n-p)

(when (file-exists-p (expand-file-name "init-local.el" user-emacs-directory))
  (error "Please move init-local.el to ~/.emacs.d/lisp"))
(require 'init-local nil t)

(require 'init-alias)

(setq shell-file-name "/usr/bin/zsh")

(require-package 'markdown-mode)

;;(require 'multi-term)
;;(setq multi-term-program "/usr/bin/zsh")

;;(require 'init-hydra)

(require 'init-myblog)
;;(require 'init-rmail)
;;(require 'init-orgpage)

(setq large-file-warning-threshold 100000000)

(require 'init-wc)

;;(require 'init-whitespace)

(require 'init-pyim)

;; find-things-fast
(load "~/pkg/find-things-fast/find-things-fast.el")
(require 'find-things-fast)

