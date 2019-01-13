;;; 002_theme.el -- テーマの設定
;;; Commentary:
;;; Code:

(use-package doom-themes
  :init
  (load-theme 'doom-one t)
  (doom-themes-neotree-config)
  (doom-themes-org-config))

(provide '002_theme)
;;; 002_theme.el ends here
