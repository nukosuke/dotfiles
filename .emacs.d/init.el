;;; init.el --- yet another init.el
;; Copyright (c) nukosuke
;; Author: nukosuke <nukosuke@cpan.org>
;;; Commentary:
;;; Code:

;; using straight for package manager
(let ((bootstrap-file (concat user-emacs-directory "straight/repos/straight.el/bootstrap.el"))
      (bootstrap-version 3))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
	(url-retrieve-synchronously
	 "https://raw.githubusercontent.com/raxod502/straight.el/develop/install.el"
	 'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

(straight-use-package 'use-package)
(use-package el-patch :straight t)
(use-package init-loader :straight t)
(setq init-loader-show-log-after-init nil)
(init-loader-load "~/.emacs.d/init")

;; スクロールをぬるぬるさせる
;(require `smooth-scroll)
;(smooth-scroll-mode 1)

;; テーマを読み込み
;(require `hc-zenburn-theme)

;; タブ機能
;(load "elscreen-init")

;; モードラインをシャレオツにする
;(powerline-default-theme)

;; フレームの切り替え
;(load "win-switch-init")

;; 対応する括弧を自動補完
;(smartparens-global-mode t)

;; 検索にマッチした数と現在の位置を表示
;(global-anzu-mode +1)

;; コピペした場所をハイライトする
;(require 'volatile-highlights)
;(volatile-highlights-mode 1)

;; シンタックスエラーを表示
;(add-hook 'after-init-hook #'global-flycheck-mode)

;; プロジェクトの構成を読む
;(projectile-global-mode t)

;;; magit keybind
;(global-set-key (kbd "C-c C-g") 'magit-status)

(provide 'init)
;;; init.el ends here
