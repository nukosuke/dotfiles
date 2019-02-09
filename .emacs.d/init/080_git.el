;;; 080_git.el -- gitの設定 -*- lexical-binding: t -*-
;;; Commentary:
;;
;; magit:
;; - gitクライアント
;;
;; git-gutter
;; - hunk単位の操作用
;;
;; git-gutter-fringe:
;; - 変更行にマークを表示
;;
;;; Code:

;;
;; magit
;;
(use-package magit
  :bind
  ("C-c C-c" . magit-dispatch-popup))

;;
;; git-gutter
;;
(use-package git-gutter
  :custom
  (git-gutter:ask-p nil)
  :bind
  ("C-c g" . hydra-git-gutter/body))

;;
;; git-gutterのhunk操作用hydra
;;
(defhydra hydra-git-gutter nil
  "git hunk"
  ("p" git-gutter:previous-hunk "previous")
  ("n" git-gutter:next-hunk "next")
  ("s" git-gutter:stage-hunk "stage")
  ("r" git-gutter:revert-hunk "revert")
  ("m" git-gutter:mark-hunk "mark")
  ("SPC" git-gutter:popup-hunk "popup viewer"))

;;
;; git-gutter-fringe
;;
(use-package git-gutter-fringe
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
  (global-git-gutter-mode t)
  :diminish git-gutter-mode)

(provide '080_git)

;;; 080_git.el ends here
