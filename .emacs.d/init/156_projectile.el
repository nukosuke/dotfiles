;;; 156_projectile.el -- config for projectile
;;; Commentary:
;; Projectileの設定
;; - グローバルで有効
;; - 検索にhelmを使用

(use-package projectile
  :config
  (projectile-global-mode)
  (setq projectile-completion-system 'helm))

(provide '156_projectile)
;;; 156_projectile.el ends here
