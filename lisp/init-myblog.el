(require 'ox-publish)
(defvar myblog-base-directory "~/Documents/org/zhnjia.github.io/_org"
  "Path to org files.")
(defvar myblog-publishing-diretory "~/Documents/org/zhnjia.github.io/"
  "Path to Jekyll project.")

(setq org-publish-project-alist
      '(
        ("org-ianbarton"
         :base-directory "~/Documents/org/zhnjia.github.io/_org"
         :base-extension "org"
         :publishing-directory "~/Documents/org/zhnjia.github.io/"
         :recursive t
         :publishing-function org-html-publish-to-html
         :headline-levels 4
         :html-extension "html"
         :body-only t ;; Only export section between <body> </body>
         )


        ("org-static-ian"
         :base-directory "~/Documents/org/zhnjia.github.io/_org"
         :base-extension "css\\|js\\|png\\|jpg\\|gif\\|pdf\\|mp3\\|ogg\\|swf\\|php"
         :publishing-directory"~/Documents/org/zhnjia.github.io/"
         :recursive t
         :publishing-function org-publish-attachment)

        ("ian" :components ("org-ianbarton" "org-static-ian"))
        ))

(provide 'init-myblog)
