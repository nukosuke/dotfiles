;;; 500_org.el -- config for Org
;;; Commentary:
;; Orgモードの設定全般

(use-package org
  ;; Emacs標準のバージョンを使う
  :straight nil

  :custom
  ;; TODO: org-directory変更
  (org-return-follows-link t "RET will follow the link")

  :bind
  ("C-c o l" . org-store-link)
  ("C-c o a" . org-agenda)
  ("C-c o c" . org-capture))

(provide '500_org)
;;; 500_org.el ends here
