;;; Package --- projectile integration
;;; Commentary:

;;; Code:
(require-package 'projectile)

(projectile-mode +1)
(define-key projectile-mode-map (kbd "C-c C-p") 'projectile-command-map)

(require-package 'counsel-projectile)
(counsel-projectile-mode)

(require-package 'org-projectile)
(setq org-projectile-projects-file "/home/jiazhang/Workspace/doc/works.org")
(push (org-projectile-project-todo-entry) org-capture-templates)
(setq org-agenda-files (append org-agenda-files (org-projectile-todo-files)))
(global-set-key (kbd "C-c c") 'org-capture)
(global-set-key (kbd "C-c n p") 'org-projectile-project-todo-completing-read)

(provide 'init-projectile)
;;; init-projectile.el ends here
