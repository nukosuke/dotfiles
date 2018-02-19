;;; 999_key-bindings.el -- キーバインドの設定
;;; Commentary:
;;; Code:

;; C-a 行頭 -> ファイルの先頭
;; C-e 行末 -> ファイルの末尾
(use-package sequential-command)
(require 'sequential-command-config)
(global-set-key (kbd "C-a") 'seq-home)
(global-set-key (kbd "C-e") 'seq-end)

(global-set-key (kbd "C-h") 'delete-backward-char)
(global-set-key (kbd "C-m") 'newline-and-indent)

;;; C-x prefix
(global-set-key (kbd "C-x C-f") 'helm-find-files)
(global-set-key (kbd "C-x b") 'helm-buffers-list)

;;; C-c prefix
(global-set-key (kbd "C-c g s") 'magit-status)

(provide '999_key-bindings)
;;; 999_key-bindings.el ends here
