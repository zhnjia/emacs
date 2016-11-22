(require-package 'company)
;;(require-package 'company-jedi)

(setq company-minimum-prefix-length 2)
(setq company-idle-delay 0.0)

(add-hook 'after-init-hook 'global-company-mode)

;;(defun my/python-mode-hook ()
;;   (add-to-list 'company-backends 'company-jedi))

;;(add-hook 'python-mode-hook 'my/python-mode-hook)

(provide 'init-company)
