;;; lang-modes.el -- 言語モードの設定
;;; Commentary:
;;; Code:

(use-package web-mode)
(add-to-list 'auto-mode-alist '("\\.html\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.css\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.jsx\\'" . web-mode))

(use-package js2-mode)
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))

(use-package ruby-mode)
(use-package go-mode)
(use-package json-mode)
(use-package yaml-mode)
(use-package dockerfile-mode)
(use-package markdown-mode)

(provide 'auto-mode-alist)

;;; auto-mode-alist.el ends here
