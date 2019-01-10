;;; 120_iflipb --- バッファの連続切り替え

;;; Commentary:
;; M-p M-nでバッファを連続して切り替える
;; *始まりのバッファやmagitのバッファは切り替え候補には入れない

;;; Code:

(use-package iflipb
  :init
  (setq iflipb-wrap-around t)
  (setq iflipb-ignore-buffers (list "^[*]" "^magit"))
  
  :bind (("M-p" . 'iflipb-previous-buffer)
         ("M-n" . 'iflipb-next-buffer)))

(provide '120_iflipb)
;;; 120_iflipb.el ends here

