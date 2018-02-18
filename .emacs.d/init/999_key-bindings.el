;;; 999_key-bindings.el -- キーバインドの設定
;;; Commentary:
;;; Code:

;; C-a 行頭 -> ファイルの先頭
;; C-e 行末 -> ファイルの末尾
(use-package sequential-command)
(require 'sequential-command-config)
(global-set-key "\C-a" 'seq-home)
(global-set-key "\C-e" 'seq-end)

;; バックスペース
(global-set-key (kbd "C-h") 'delete-backward-char)

;; 改行&自動インデント
(global-set-key (kbd "C-m") 'newline-and-indent)

(provide '999_key-bindings)
;;; 999_key-bindings.el ends here
