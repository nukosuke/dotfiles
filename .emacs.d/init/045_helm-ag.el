;;; 045_helm-ag.el -- helmでSilverSearcherを使う設定
;;; Commentary:
;;; Code:

(use-package helm-ag
  :if (executable-find "ag")
  :bind ("C-c a g" . helm-ag))

(provide '045_helm-ag)
;;; 045_helm-ag.el ends here
