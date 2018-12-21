;;; 020_hlinum.el -- 行番号の表示設定
;;; Commentary:
;;; Code:

;; 18/12/21 26以上ではdisplay-line-numbers-modeを使う
(if (version<= "26.0.50" emacs-version)
    (global-display-line-numbers-mode)
  ((use-package hlinum
     :init
     (hlinum-activate)

     :hook
     ((prog-mode text-mode) . linum-mode))))

(provide '020_hlinum)
;;; 020_hlinum.el ends here
