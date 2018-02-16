;;; autoauto-complete-init.el -- auto-completeの初期化
;;; Commentary:
;;; Code:

(require 'auto-complete)
(require 'auto-complete-config)

;; 補完に用いるソースを指定
(setq-default ac-sources
  '(ac-source-yasnippet
    ac-source-abbrev
    ac-source-dictionary
    ac-source-words-in-same-mode-buffers))

;; 自動で起動しない
(setq ac-auto-start nil)

;; タブで起動するように設定
(ac-set-trigger-key (kbd "TAB"))
(ac-set-trigger-key "<tab>")

;; デフォルトで有効化
(global-auto-complete-mode 1)

(provide 'auto-complete-init)

;;; auto-complete-init.el ends here
