;;====================================================================
;; Projectile
(require-package 'projectile)
(require-package 'helm-projectile)
;;(setq projectile-indexing-method 'native)
;;(setq projectile-enable-caching t)

(defvar my-project-name nil)
(put 'my-project-name 'safe-local-variable #'stringp)

(defun projectile-project-name--prefer-mine (orig-fun &rest args)
  (or my-project-name (apply orig-fun args)))

(advice-add 'projectile-project-name :around #'projectile-project-name--prefer-mine)

(projectile-global-mode)

(helm-projectile-on)

;;====================================================================
;; zeal
(require-package 'zeal-at-point)
(global-set-key "\C-cz" 'zeal-at-point)
;;(add-to-list 'zeal-at-point-mode-alist '(java-mode . "android"))

(provide 'init-ide)
