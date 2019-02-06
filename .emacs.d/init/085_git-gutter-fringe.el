;;; 085_git-gutter-fringe.el -- 変更行にマークを表示
;;; Commentary:
;;; Code:

(use-package magit-popup)

(use-package git-gutter-fringe
  :init
  (global-git-gutter-mode t)
  :config
  (fringe-helper-define 'git-gutter-fr:added '(center repeated)
    "XXX.....")
  (fringe-helper-define 'git-gutter-fr:modified '(center repeated)
    "XXX.....")
  (fringe-helper-define 'git-gutter-fr:deleted 'bottom
    "X......."
    "XX......"
    "XXX....."
    "XXXX....")
  :diminish git-gutter-mode)

(provide '085_git-gutter-fringe)
;;; 085_git-gutter-fringe.el ends here
