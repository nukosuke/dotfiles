;;; 150_lang-modes.el -- 言語モードの設定
;;; Commentary:
;;; Code:

(use-package web-mode :mode "\\.html\\'" "\\.css\\'" "\\.php\\'" "\\.jsx\\'")
(use-package js2-mode :mode "\\.js\\'")
(use-package ruby-mode
  :init
  (custom-set-variables '(ruby-insert-encoding-magic-comment nil)))
(use-package elixir-mode)
(use-package go-mode)
(use-package rust-mode)
(use-package json-mode)
(use-package yaml-mode)
(use-package dockerfile-mode)
(use-package markdown-mode)
(use-package slim-mode)
(use-package gitignore-mode)

(provide '150_lang-modes)

;;; 150_lang-modes.el ends here
