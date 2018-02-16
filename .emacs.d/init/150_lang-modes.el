;;; lang-modes.el -- 言語モードの設定
;;; Commentary:
;;; Code:

(use-package web-mode :straight t)
(add-to-list 'auto-mode-alist '("\\.html\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.css\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.jsx\\'" . web-mode))

(use-package js2-mode :straight t)
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))

(use-package ruby-mode :straight t)
(use-package go-mode :straight t)
(use-package yaml-mode :straight t)

(provide 'auto-mode-alist)

;;; auto-mode-alist.el ends here
