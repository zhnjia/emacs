(require-package 'helm)
;;(require-package 'helm-gtags)

(require 'helm-config)
;; '(helm-gtags-suggested-key-mapping t)
;; '(helm-gtags-auto-update t)
(global-set-key (kbd "C-c h") 'helm-command-prefix)
(global-unset-key (kbd "C-x c"))

;;(setq helm-split-window-in-side-p t)

(setq helm-split-window-default-side 'below)
(setq helm-always-two-windows t)

(global-set-key (kbd "M-x") #'helm-M-x)
(global-set-key (kbd "C-x r b") #'helm-filtered-bookmarks)
(global-set-key (kbd "C-x C-f") #'helm-find-files)

;; helm ls git
(require-package 'helm-ls-git)
(global-set-key (kbd "C-x C-d") 'helm-browse-project)

;; hlem swoop
(require-package 'helm-swoop)
(global-set-key (kbd "M-i") 'helm-swoop)
(setq helm-swoop-split-with-multiple-windows t)
(define-key isearch-mode-map (kbd "M-i") 'helm-swoop-from-isearch)

;; helm git grep in whole repo
(require-package 'helm-git-grep) ;; Not necessary if installed by package.el
(global-set-key (kbd "C-c g") 'helm-git-grep)
;; Invoke `helm-git-grep' from isearch.
(define-key isearch-mode-map (kbd "C-c g") 'helm-git-grep-from-isearch)
;; Invoke `helm-git-grep' from other helm.
(eval-after-load 'helm
  '(define-key helm-map (kbd "C-c g") 'helm-git-grep-from-helm))


(global-set-key (kbd "C-c G") 'helm-grep-do-git-grep)
(global-set-key (kbd "C-x b") 'helm-mini)

(setq helm-autoresize-max-height 30)

(helm-mode 1)
(helm-autoresize-mode 1)

(provide 'init-helm)
;;;
