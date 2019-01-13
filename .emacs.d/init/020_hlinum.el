;;; 020_hlinum.el -- 行番号の表示設定
;;; Commentary:
;;; Code:

;; 18/12/21 26以上ではdisplay-line-numbers-modeを使う
(if (version<= "26.0.50" emacs-version)
    (progn
      (add-hook 'prog-mode-hook 'display-line-numbers-mode)
      (add-hook 'text-mode-hook 'display-line-numbers-mode))
  ((use-package hlinum
     :init
     (hlinum-activate)

     :hook
     ((prog-mode text-mode) . linum-mode))))

(provide '020_hlinum)
;;; 020_hlinum.el ends here
