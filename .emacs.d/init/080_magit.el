;;; 080_magit.el -- magitの設定
;;; Commentary:
;;; Code:

(use-package magit
  :bind
  (("C-c C-c" . magit-dispatch-popup)
   ("C-c g s" . magit-status)
   ("C-c g l" . magit-log-all)))

(provide '080_magit)
;;; 080_magit.el ends here
