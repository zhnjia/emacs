(require-package 'prettier-js)
(require-package 'js2-mode)

(add-hook 'js2-mode-hook 'prettier-js-mode)

(provide 'init-js)
