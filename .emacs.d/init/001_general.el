;;; general-init.el -- 共通の設定
;;; Commentary:
;;; Code:
(custom-set-variables
 '(current-language-environment "UTF-8")
 ;; スタートアップ画面を表示しない(scratchバッファを表示)
 '(inhibit-startup-screen t)
 ;; カーソルホバー時に括弧の対応を表示する
 '(show-paren-mode t)
 ;; タイトルバーフォーマット
 '(frame-title-format (format "%%f" (system-name)))
 ;; バックアップファイル(*~)を作成しない
 '(make-backup-files nil))

;; ツールバー非表示
(tool-bar-mode 0)

;; メニューバー非表示
(menu-bar-mode 0)

;; スクロールバー非表示
(scroll-bar-mode 0)

;; タブ幅を4に指定
(setq-default tab-width 4)

;; タブをスペースに
(setq-default indent-tabs-mode nil)

;; Ctrl-hをバックスペースにする
(global-set-key (kbd "C-h") 'delete-backward-char)

;; 改行後に自動でインデント
(global-set-key (kbd "C-m") 'newline-and-indent)

(provide 'general-init)
;;; general-init.el ends here
