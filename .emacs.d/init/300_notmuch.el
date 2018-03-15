;;; 300_notmuch.el -- mailer
;;; Commentary:
;;; Code:

(use-package notmuch)
(use-package helm-notmuch
  :bind (("C-c m s". helm-notmuch)))

;;; 300_notmuch.el ends here
