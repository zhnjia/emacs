;;
(add-to-list 'load-path "/usr/local/share/emacs/site-list/mu4e")
(require 'mu4e)

(setq
 mu4e-maildir "~/.mailbox"
 mu4e-sent-folder "/INBOX.Sent"
 mu4e-drafts-folder "/INBOX.Drafts"
 mu4e-trash-folder "/INBOX.Trash"
 mu4e-refile-folder "/INBOX.Archive"
 mu4e-user-mail-address-list '("jiaz@oupeng.com" "jiazhang@opera.com")
 mu4e-attachment-dir  "~/Downloads")

(setq mu4e-headers-fields
      '( (:date          .  25)    ;m; alternatively, use :human-date
         (:flags         .   6)
         (:from          .  22)
         (:subject       .  nil))) ;; alternatively, use :thread-subject

(setq
 mu4e-get-mail-command "offlineimap"
 mu4e-update-interval 300)

(setq message-send-mail-function 'smtpmail-send-it)

(setq mu4e-html2text-command "html2text -utf8 -width 72")

(provide 'init-mu4e)
