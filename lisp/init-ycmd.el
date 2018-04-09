;; ycmd

;;; Googlers can replace a lot of this with (require 'google-ycmd).

(require-package 'ycmd)
(require-package 'company-ycmd)
(require-package 'flycheck-ycmd)

(company-ycmd-setup)
(flycheck-ycmd-setup)

;; Show completions after 0.15 seconds
(setq company-idle-delay 0.15)

;; Activate for editing C++ files
(add-hook 'c++-mode-hook 'ycmd-mode)
(add-hook 'c++-mode-hook 'company-mode)
(add-hook 'c++-mode-hook 'flycheck-mode)

;; Replace the directory information with where you downloaded ycmd to
(set-variable 'ycmd-server-command (list "python" "/home/jiazhang/Pkg/ycmd/ycmd/__main__.py"))

;; Edit according to where you have your Chromium/Blink checkout
(set-variable 'ycmd-extra-conf-whitelist '("/home/jiazhang/workspace/chromium/.ycm_extra_conf.py"))

(set-variable 'ycmd-global-config "/home/jiazhang/Pkg/ycmd/cpp/ycm/.ycm_extra_conf.py")

;; Show flycheck errors in idle-mode as well
(setq ycmd-parse-conditions '(save new-line mode-enabled idle-change))

;; Makes emacs-ycmd less verbose
(setq url-show-status nil)

(provide 'init-ycmd)
