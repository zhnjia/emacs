(require-package 'helm)
;;(require-package 'helm-gtags)

(custom-set-variables
 ;; '(helm-gtags-suggested-key-mapping t)
 ;; '(helm-gtags-auto-update t)
 '(helm-autoresize-max-height 30))

;; helm-dash
(require-package 'helm-dash)
(setq helm-dash-browser-func 'eww)

;; Support for the http://kapeli.com/dash documentation browser
(defun sanityinc/dash-installed-p ()
  "Return t if Dash is installed on this machine, or nil otherwise."
  (let ((lsregister "/System/Library/Frameworks/CoreServices.framework/Versions/A/Frameworks/LaunchServices.framework/Versions/A/Support/lsregister"))
    (and (file-executable-p lsregister)
         (not (string-equal
               ""
               (shell-command-to-string
                (concat lsregister " -dump|grep com.kapeli.dash")))))))

(when (package-installed-p 'dash-at-point)
  (global-set-key (kbd "C-c D") 'dash-at-point))

(provide 'init-helm)
;;;
