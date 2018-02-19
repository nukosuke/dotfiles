;;; 085_git-gutter-fringe+.el -- 変更行にマークを表示
;;; Commentary:
;;; Code:

(use-package magit-popup)
(use-package git-gutter-fringe+
  :init
  (global-git-gutter+-mode t))

(provide '085_git-gutter-fringe+)
;;; 085_git-gutter-fringe+.el ends here
