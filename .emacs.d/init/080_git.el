;;; 080_git.el -- gitの設定
;;; Commentary:
;;
;; magit:
;; - gitクライアント
;;
;; git-gutter-fringe:
;; - 変更行にマークを表示
;; - hunk単位のstage
;;
;;; Code:

(use-package magit
  :bind
  (("C-c C-c" . magit-dispatch-popup)
   ("C-c g s" . magit-status)
   ("C-c g l" . magit-log-all)))

(use-package magit-popup
  :after magit)

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

(provide '080_git)

;;; 080_git.el ends here
