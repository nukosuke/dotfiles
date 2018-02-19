;;; 155_flycheck.el -- 文法チェック設定
;;; Commentary:
;;; Code:

(use-package flycheck
  :init
  (add-hook 'after-init-hook #'global-flycheck-mode))

(use-package flycheck-pos-tip
  :init
  ;; エコーエリアではなくtipに表示する
  (eval-after-load 'flycheck
    '(custom-set-variables
      '(flycheck-display-errors-function #'flycheck-pos-tip-error-messages))))

(provide '155_flycheck)
;;; 155_flycheck.el ends here
