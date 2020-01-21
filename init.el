;;; Package --- init.el
;;; Commentary:
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.

;;; Code:
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

(require 'init-org)
(require 'setup-htmlize)
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
(require 'init-meghanada)

;;(require 'init-perspective)

;;auto-complete
;;(require 'init-ac)

;;Productitivity
(require 'init-windows)
(require-package 'expand-region)
(require-package 'undo-tree)
(require-package 'goto-chg)
(require-package 'json-reformat)


;;other
(setq fci-rule-color "darkred")
(setq-default cursor-type 'bar)
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

;;(require 'init-pyim)

(require-package 'powerline)
(powerline-default-theme)

;;(desktop-save-mode 1)
(require 'gn-mode)

;; (require 'init-gradle-opera)

;;(require 'init-calendar)
(require 'auto-save)
(auto-save-enable)
(setq auto-save-silent t)
;; (setq auto-save-delete-trailing-whitespace t)

(require 'init-projectile)

(setq inhibit-startup-screen t)

