;;; init.el --- yet another init.el
;; Copyright (c) nukosuke
;; Author: nukosuke <nukosuke@cpan.org>
;;; Commentary:
;;; Code:

(require 'eieio)

;; 設定ファイルディレクトリをパスに追加
;; ~/.emacs.d/site-lisp 以下全部読み込み
(let ((default-directory (expand-file-name "~/.emacs.d/site-lisp")))
  (add-to-list 'load-path default-directory)
  (if (fboundp 'normal-top-level-add-subdirs-to-load-path)
      (normal-top-level-add-subdirs-to-load-path)))

(load (concat user-emacs-directory "el-get-init.el"))

(setq init-loader-show-log-after-init nil)
(init-loader-load "~/.emacs.d/init")

;; パッケージ管理
(el-get 'sync)

;; 行番号を表示
(package-initialize)
(require `hlinum)
(global-linum-mode 1)

;; git差分表示
(require 'git-gutter-fringe+)
(global-git-gutter+-mode t)

;; スクロールをぬるぬるさせる
(require `smooth-scroll)
(smooth-scroll-mode 1)

;; テーマを読み込み
(require `hc-zenburn-theme)

;; タブ機能
(load "elscreen-init")

;; モードラインをシャレオツにする
(powerline-default-theme)

;; フレームの切り替え
(load "win-switch-init")

;; helmの有効化
(require 'helm-config)
(helm-mode 1)

;; メジャーモードの起動設定
(load "auto-mode-alist")

;; スニペット機能
(load "yasnippet-init")

;; ポップアップ表示
(load "popup-init")

;; 補完機能
(load "auto-complete-init")

;; 対応する括弧を自動補完
(smartparens-global-mode t)

;; 検索にマッチした数と現在の位置を表示
(global-anzu-mode +1)

;; コピペした場所をハイライトする
(require 'volatile-highlights)
(volatile-highlights-mode 1)

;; シンタックスエラーを表示
(add-hook 'after-init-hook #'global-flycheck-mode)

;; プロジェクトの構成を読む
(projectile-global-mode t)

;;;TODO:
;;w3m
;;mew

;; twitterモードの設定
(load "twittering-mode-init")

;; キーバインドの設定
(load "key-bindings-init")

;;; magit keybind
(global-set-key (kbd "C-c C-g") 'magit-status)

;(load "after-init.el")

(provide 'init)
;;; init.el ends here
