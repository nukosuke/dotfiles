;;; win-switch.el -- win-switchの初期化
;;; Commentary:
;;; Code:

(use-package win-switch)

;;; 0.75秒間受け付けるタイマー
(setq win-switch-idle-time 0.75)

;; ウィンドウ切り替え
(win-switch-set-keys '("k") 'up)
(win-switch-set-keys '("j") 'down)
(win-switch-set-keys '("h") 'left)
(win-switch-set-keys '("l") 'right)
(win-switch-set-keys '("o") 'next-window)
(win-switch-set-keys '("p") 'previous-window)

;; リサイズ
(win-switch-set-keys '("K") 'enlarge-vertically)
(win-switch-set-keys '("J") 'shrink-vertically)
(win-switch-set-keys '("H") 'shrink-horizontally)
(win-switch-set-keys '("L") 'enlarge-horizontally)

;; 分割
(win-switch-set-keys '("3") 'split-horizontally)
(win-switch-set-keys '("2") 'split-vertically)
(win-switch-set-keys '("0") 'delete-window)

;; その他
(win-switch-set-keys '(" ") 'other-frame)
(win-switch-set-keys '("u" [return]) 'exit)
(win-switch-set-keys '("\M-\C-g") 'emergency-exit)

;; C-x oを置き換える
(global-set-key (kbd "C-x o") 'win-switch-dispatch)

(provide 'win-switch-init)

;;; win-switch-init.el ends here
