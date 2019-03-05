(require-package 'company)
;;(require-package 'company-jedi)

(setq company-minimum-prefix-length 2)
;;(setq company-idle-delay 0.0)

;; Show completions after 0.15 seconds
(setq company-idle-delay 0.15)

(add-hook 'after-init-hook 'global-company-mode)

;;(defun my/python-mode-hook ()
;;   (add-to-list 'company-backends 'company-jedi))

;;(add-hook 'python-mode-hook 'my/python-mode-hook)

(require-package 'company-auctex)
;;(company-auctex-init)

(setq company-dabbrev-downcase nil)

(provide 'init-company)
