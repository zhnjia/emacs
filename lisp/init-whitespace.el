(require 'whitespace)
(setq whitespace-style '(face indentation trailing empty lines-tail))
(setq whitespace-line-column nil)
(set-face-attribute 'whitespace-line nil
                    :background "purple"
                    :foreground "white"
                    :weight 'bold)
(global-whitespace-mode 1)

(provide 'init-whitespace)
