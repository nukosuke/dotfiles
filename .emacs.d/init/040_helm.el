;;; 040_helm.el -- helmの設定
;;; Commentary:
;;; Code:

(use-package helm)
(require 'helm-config)
(helm-mode 1)

(define-key helm-map (kbd "C-h") 'delete-backward-char)

(provide '040_helm)
;;; 040_helm.el ends here
