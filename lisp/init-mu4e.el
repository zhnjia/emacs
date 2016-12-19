;; mu4e
(add-to-list 'load-path "/usr/local/share/emacs/site-list/mu4e")
(require 'mu4e)

(setq
 mu4e-maildir "~/.mailbox_opera"
 mu4e-sent-folder "/sent"
 mu4e-drafts-folder "/drafts"
 mu4e-trash-folder "/trash"
 mu4e-refile-folder "/archive"
 mu4e-attachment-dir  "~/Downloads"
 mu4e-html2text-command "html2text -utf8 -width 72")

(setq mu4e-maildir-shortcuts
      '( ("/drafts"      . ?d)
         ("/sent"        . ?s)
         ("/trash"       . ?t)
         ("/bts"         . ?b)
         ("/reviews"     . ?r)
         ("/all"         . ?a)))

(setq mu4e-headers-fields
      '((:date          .  25)    ;m; alternatively, use :human-date
        (:flags         .   6)
        (:from          .  22)
        (:subject       .  nil))) ;; alternatively, use :thread-subject

(setq mu4e-get-mail-command "offlineimap"
      mu4e-update-interval 300
      user-mail-address "jiazhang@opera.com"
      user-full-name "Zhang Jia")

;; smtpmail
(require 'smtpmail)

(setq message-send-mail-function 'smtpmail-send-it
      starttls-use-gnutls t
      smtpmail-starttls-credentials '(("smtp.g.opera.com" 465 nil nil))
      smtpmail-auth-credentials '(("smtp.g.opera.com" 465 "jiazhang@opera.com" nil))
      smtpmail-default-smtp-server "smtp.g.opera.com"
      smtpmail-smtp-server "smtp.g.opera.com"
      smtpmail-smtp-service 465
      )

(setq smtpmail-smtp-server "mail.oupeng.com"
      smtpmail-smtp-service 25)

(setq message-kill-buffer-on-exit t)

(provide 'init-mu4e)
