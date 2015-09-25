(require-package 'projectile)
;(require-package 'perspective)
;(require-package 'persp-projectile)

;(persp-mode)
;(require 'persp-projectile)

;;(setq projectile-indexing-method 'native)
;;(setq projectile-enable-caching t)

(defvar my-project-name nil)
(put 'my-project-name 'safe-local-variable #'stringp)

(defun projectile-project-name--prefer-mine (orig-fun &rest args)
  (or my-project-name (apply orig-fun args)))

(advice-add 'projectile-project-name :around #'projectile-project-name--prefer-mine)

(projectile-global-mode)

(provide 'init-projectile)
