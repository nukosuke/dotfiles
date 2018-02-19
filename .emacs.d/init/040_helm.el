;;; 040_helm.el -- helmの設定
;;; Commentary:
;;; Code:

(use-package helm
  :init
  (require 'helm-config)
  ;; 下までいったら上に戻ってくる（逆も同じ）
  (setq helm-move-to-line-cycle-in-source t)
  ;; 分割時でも今のウィンドウでhelmバッファを開く
  (setq helm-split-window-in-side-p t)
  ;; 常に有効化
  (helm-mode 1)

  :bind
  (:map helm-map
              ("C-h" . delete-backward-char)))

(provide '040_helm)
;;; 040_helm.el ends here
