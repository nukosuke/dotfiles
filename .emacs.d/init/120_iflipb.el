;;; 120_iflipb --- バッファの連続切り替え

;;; Commentary:
;; M-p M-nでバッファを連続して切り替える

;;; Code:

(use-package iflipb
  :bind (("M-p" . 'iflipb-previous-buffer)
         ("M-n" . 'iflipb-next-buffer)))

(provide '120_iflipb)
;;; 120_iflipb.el ends here

