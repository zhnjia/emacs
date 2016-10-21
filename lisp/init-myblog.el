(require 'ox-publish)
(setq org-publish-project-alist
      '(
        ("blog-notes"
         :base-directory "~/org/blogs/org/"
         :base-extension "org"
         :publishing-directory "~/org/blogs/"
         :recursive t
         :publishing-function org-html-publish-to-html
         :headline-levels 4
         :auto-preamble t
         :section-numbers nil
         :email "zhnjia@gmail.com"
         :auto-sitemap t
         :sitemap-filename "sitemap.org"
         :sitemap-title "Sitemap"
         :sitemap-sort-files anti-chronologically
         :sitemap-file-entry-format "%d %t"
         :html-head "<link rel=\"stylesheet\" type=\"text/css\" href=\"css/hyde.css\"/>"
         )
        ("blog-static"
         :base-directory "~/org/blogs/org/"
         :base-extention "css\\|js\\|png\\|jpg\\|gif\\|pdf\\|mp3\\|ogg\\|swf"
         :publishing-directory "~/org/blogs/"
         :recursive t
         :publishing-function org-publish-attachment
         )
        ("blog"
         :components ("blog-notes" "blog-static")
         )))

(provide 'init-myblog)
