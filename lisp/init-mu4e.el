;; mu4e
(add-to-list 'load-path "/usr/local/share/emacs/site-list/mu4e")
(require 'mu4e)

;; common settings
(setq mu4e-maildir-shortcuts
      '(("/opera/all"     . ?a)
        ("/opera/bts"     . ?b)
        ("/opera/reviews" . ?r)
        ("/oupeng/inbox"  . ?i)
        ))

(setq mu4e-headers-fields
      '((:date          .  25)    ;m; alternatively, use :human-date
        (:flags         .   6)
        (:from          .  22)
        (:subject       .  nil))) ;; alternatively, use :thread-subject

(setq mu4e-attachment-dir     "~/Downloads"
      mu4e-html2text-command  "html2text -utf8 -width 72")

(setq message-kill-buffer-on-exit t)
(setq mu4e-view-show-images t
      mu4e-show-images t
      mu4e-view-image-max-width 800)
(setq mail-user-agent 'mu4e-user-agent)
(setq mu4e-headers-date-format "%Y-%m-%d %H:%M")

;; accounts
(setq mu4e-contexts
      `( , (make-mu4e-context
            :name "1: Opera"
            :match-func (lambda (msg)
                          (when msg
                            (mu4e-message-contact-field-matches msg
                                                                :to "jiazhang@opera.com")))
            :vars '((user-mail-address        . "jiazhang@opera.com")
                    (user-full-name           . "Zhang Jia")
                    (mu4e-sent-folder         . "/opera/sent")
                    (mu4e-drafts-folder       . "/opera/drafts")
                    (mu4e-trash-folder        . "/opera/trash")
                    (mu4e-refile-folder       . "/opera/archive")))
           , (make-mu4e-context
              :name "2: Oupeng"
              :match-func (lambda (msg)
                            (when msg
                              (mu4e-message-contact-field-matches msg
                                                                  :to "jiaz@oupeng.com")))
              :vars '((user-mail-address      . "jiaz@oupeng.com")
                      (user-full-name         . "张佳")
                      (mu4e-sent-folder       . "/oupeng/sent")
                      (mu4e-drafts-folder     . "/oupeng/drafts")
                      (mu4e-trash-folder      . "/oupeng/trash")
                      (mu4e-refile-folder     . "/oupeng/archive")
                      (smtpmail-smtp-server   . "mail.oupeng.com")
                      (smtpmail-smtp-service  . 25)
                      (mu4e-compose-signature . (concat
                                                 "张佳\n"
                                                 "欧朋浏览器-工程师\n"
                                                 "现在就帮你省掉70%的手机上网流量！\n"))))))

;; fetching mail
(setq mu4e-get-mail-command "offlineimap"
      mu4e-update-interval 300)

;; smtpmail
(require 'smtpmail)
(setq message-send-mail-function 'smtpmail-send-it
      starttls-use-gnutls t
      ;;      smtpmail-starttls-credentials '(("smtp.g.opera.com" 465 nil nil))
      ;;      smtpmail-auth-credentials '(("smtp.g.opera.com" 465 "jiazhang@opera.com" nil))
      ;;      smtpmail-default-smtp-server "smtp.g.opera.com"
      ;;      smtpmail-smtp-server "smtp.g.opera.com"
      ;;      smtpmail-smtp-service 465
      )

;; mu4e-maildirs-extension
(require-package 'mu4e-maildirs-extension)
(mu4e-maildirs-extension)

(provide 'init-mu4e)
