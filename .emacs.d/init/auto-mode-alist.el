;;; auto-mode-alist.el -- メジャーモードの起動設定
;;; Commentary:
;;; Code:

(add-to-list 'auto-mode-alist '("\\.html\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.css\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
(add-to-list 'auto-mode-alist '("\\.jsx\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.scala\\'" .scala-mode))
(provide 'auto-mode-alist)

;;; auto-mode-alist.el ends here
