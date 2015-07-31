;;
(add-to-list 'load-path "/usr/local/share/emacs/site-list/mu4e")
(require 'mu4e)

(setq
 mu4e-maildir "~/.mailbox"
 mu4e-sent-folder "/sent"
 mu4e-drafts-folder "/drafts"
 mu4e-trash-folder "/trash"
 mu4e-refile-folder "/archive")

(setq mu4e-headers-fields
      '( (:date          .  25)    ;; alternatively, use :human-date
         (:flags         .   6)
         (:from          .  22)
         (:subject       .  nil))) ;; alternatively, use :thread-subject

(setq
 mu4e-get-mail-command "offlineimap"
 mu4e-update-interval 300)

(setq message-send-mail-function 'smtpmail-send-it)

(provide 'init-mu4e)
