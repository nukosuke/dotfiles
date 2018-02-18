(use-package flycheck :straight t)
(use-package flycheck-pos-tip :straight t)

(add-hook 'after-init-hook #'global-flycheck-mode)

;; エコーエリアではなくtipに表示する
(eval-after-load 'flycheck
  '(custom-set-variables
    '(flycheck-display-errors-function #'flycheck-pos-tip-error-messages)))
