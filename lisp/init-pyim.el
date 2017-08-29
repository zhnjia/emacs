(require-package 'pyim)
(require-package 'pyim-basedict) ; 拼音词库设置，五笔用户 *不需要* 此行设置

(require 'pyim)
(pyim-basedict-enable)   ; 拼音词库，五笔用户 *不需要* 此行设置

(setq default-input-method "pyim")
(setq pyim-default-scheme 'quanpin)
(setq pyim-page-tooltip 'pos-tip)
(setq pyim-page-style 'one-line)
(setq pyim-page-length 10)

(setq pyim-dicts
      '((:name "greatdict" :file "~/.emacs.d/pyim_dict/pyim-greatdict.pyim")))

(add-hook 'emacs-startup-hook
          #'(lambda () (pyim-restart-1 t)))

(provide 'init-pyim)
