;;; 045_helm-ag.el -- helmでSilverSearcherを使う設定

;;; Commentary:
;; C-c a g でagコマンドの実行結果をhelmで絞り込みできるようにする

;;; Code:

(use-package helm-ag
  :after helm
  :if (executable-find "ag")
  :bind ("C-c a g" . helm-ag))

(provide '045_helm-ag)
;;; 045_helm-ag.el ends here
