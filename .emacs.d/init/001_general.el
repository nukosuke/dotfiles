;;; 001_general.el -- 共通の設定
;;; Commentary:
;;; Code:
(custom-set-variables
 '(current-language-environment "UTF-8")
 ;; カーソルホバー時に括弧の対応を表示する
 '(show-paren-mode t)
 ;; タイトルバーフォーマット
 '(frame-title-format (format "%%f" (system-name)))
 ;; バックアップファイル(*~)を作成しない
 '(make-backup-files nil)
 ;; タブ幅を4に指定
 '(tab-width 4)
 ;; タブをスペースに
 '(indent-tabs-mode nil))

;; ツールバー非表示
(tool-bar-mode 0)

;; メニューバー非表示
(menu-bar-mode 0)

;; スクロールバー非表示
(scroll-bar-mode 0)

(provide '001_general)
;;; 001_general.el ends here
