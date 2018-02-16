;;; twittering-mode-init.el -- twittering-modeの初期化
;;; Commentary:
;;; Code:

(require 'twittering-mode)

;; パスワードを暗号化して保存
(setq twittering-use-master-password t)

;; デフォルトでアイコンを表示
(setq twittering-icon-mode t)

;; 起動時に開くタイムラインバッファを指定
(setq twittering-initial-timeline-spec-string
      '(":replies"
        ":favorites"
        ":direct_messages"
        ":home"))

(provide 'twittering-mode-init)

;;; twittering-mode-init.el ends here
