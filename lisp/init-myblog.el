(require 'ox-publish)
(setq org-publish-project-alist
      '(
        ("org-ianbarton"
         ;; Path to your org files.
         :base-directory "~/org/myblog/org/"
         :base-extension "org"

         ;; Path to your Jekyll project.
         :publishing-directory "~/org/myblog/jekyll/"
         :recursive t
         :publishing-function org-publish-org-to-html
         :headline-levels 4
         :html-extension "html"
         :body-only t ;; Only export section between <body> </body>
         )


        ("org-static-ian"
         :base-directory "~/org/myblog/org/"
         :base-extension "css\\|js\\|png\\|jpg\\|gif\\|pdf\\|mp3\\|ogg\\|swf\\|php"
         :publishing-directory "~/org/myblog/"
         :recursive t
         :publishing-function org-publish-attachment)

        ("ian" :components ("org-ianbarton" "org-static-ian"))
        ))

(provide 'init-myblog)
