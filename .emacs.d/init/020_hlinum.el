;;; 020_hlinum.el -- 行番号の表示設定
;;; Commentary:
;;; Code:

(use-package hlinum
  :init
  (hlinum-activate)

  :hook
  ((prog-mode text-mode) . linum-mode))

(provide '020_hlinum)
;;; 020_hlinum.el ends here
