;;; 155_flycheck.el -- 文法チェック設定
;;; Commentary:
;;; Code:

(use-package flycheck
  :init
  (add-hook 'after-init-hook #'global-flycheck-mode))

(use-package flycheck-pos-tip
  :after flycheck
  :custom
  (flycheck-display-errors-function #'flycheck-pos-tip-error-messages "エコーエリアではなくtipに表示する"))

(provide '155_flycheck)
;;; 155_flycheck.el ends here
