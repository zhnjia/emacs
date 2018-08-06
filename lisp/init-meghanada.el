(require 'meghanada)
(add-hook 'java-mode-hook
          (lambda ()
            ;; meghanada-mode on
            (meghanada-mode t)
            (flycheck-mode +1)
            ;; use code format
            ))
;; (cond
;;  ((eq system-type 'windows-nt)
;;   (setq meghanada-java-path (expand-file-name "bin/java.exe" (getenv "JAVA_HOME")))
;;   (setq meghanada-maven-path "mvn.cmd"))
;;  (t
;;   (setq meghanada-java-path "java")
;;   (setq meghanada-maven-path "mvn")))

(provide 'init-meghanada)
