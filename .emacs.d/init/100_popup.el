;;; popup-init.el -- popupの初期化
;;; Commentary:
;;; Code:

(use-package popup :straight t)

;; TabもしくはCtrl+nで次の候補に移動
(define-key popup-menu-keymap (kbd "TAB") 'popup-next)
(define-key popup-menu-keymap (kbd "C-n") 'popup-next)

;; Shift+TabもしくはCtrl+pで前の候補に移動
(define-key popup-menu-keymap (kbd "<backtab>") 'popup-previous)
(define-key popup-menu-keymap (kbd "C-p") 'popup-previous)

(provide 'popup-init)

;;; popup-init.el ends here
