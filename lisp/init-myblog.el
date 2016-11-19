(require 'ox-publish)
(setq org-publish-project-alist
      '(
        ("org-ianbarton"
         ;; Path to your org files.
         :base-directory "~/org/zhnjia.github.io/_org/"
         :base-extension "org"

         ;; Path to your Jekyll project.
         :publishing-directory "~/org/zhnjia.github.io/"
         :recursive t
         :publishing-function org-html-publish-to-html
         :headline-levels 4
         :html-extension "html"
         :body-only t ;; Only export section between <body> </body>
         )


        ("org-static-ian"
         :base-directory "~/org/zhnjia.github.io/_org/"
         :base-extension "css\\|js\\|png\\|jpg\\|gif\\|pdf\\|mp3\\|ogg\\|swf\\|php"
         :publishing-directory "~/org/myblog/"
         :recursive t
         :publishing-function org-publish-attachment)

        ("ian" :components ("org-ianbarton" "org-static-ian"))
        ))

(provide 'init-myblog)
