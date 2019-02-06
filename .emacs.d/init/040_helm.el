;;; 040_helm.el -- helmの設定
;;; Commentary:
;;; Code:

(use-package helm
  :init
  (require 'helm-config)

  :custom
  ;; 下までいったら上に戻ってくる（逆も同じ）
  (helm-move-to-line-cycle-in-source t)
  ;; 分割時でも今のウィンドウでhelmバッファを開く
  (helm-split-window-in-side-p t)

  :config
  ;; 常に有効化
  (helm-mode 1)

  :bind
  ("M-x"     . helm-M-x)
  ("C-x b"   . helm-buffers-list)
  ("C-x C-f" . helm-find-files)
  ("C-x C-r" . helm-recentf)
  (:map helm-map
        ("C-h" . delete-backward-char))

  :diminish)

(provide '040_helm)
;;; 040_helm.el ends here
