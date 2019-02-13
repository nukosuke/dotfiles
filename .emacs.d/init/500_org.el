;;; 500_org.el -- config for Org
;;; Commentary:
;; Orgモードの設定全般

(use-package org
  ;; Emacs標準のバージョンを使う
  :straight nil

  :after (sequential-command magit)

  :custom
  ;; TODO: org-directory変更
  (org-return-follows-link t "RET will follow the link")
  (org-agenda-files '("~/Dropbox/emacs_sync/org/todo.org"
                      "~/Dropbox/emacs_sync/org/work.org") "Agenda files")
  (org-use-speed-commands t "Use speed commands")

  :bind
  ("C-c o l" . org-store-link)
  ("C-c o a" . org-agenda)
  ("C-c o c" . org-capture)
  (:map org-mode-map
        ("C-c C-v" . magit-dispatch-popup)
        ("C-a" . seq-home)
        ("C-e" . seq-end)))

(provide '500_org)
;;; 500_org.el ends here
