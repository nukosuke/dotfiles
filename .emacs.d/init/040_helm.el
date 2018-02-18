;;; 040_helm.el -- helmの設定
;;; Commentary:
;;; Code:

(use-package helm)
(require 'helm-config)
(helm-mode 1)

(define-key global-map (kbd "C-x C-f") 'helm-find-files)
(define-key global-map (kbd "C-x b") 'helm-buffers-list)
(define-key helm-map (kbd "C-h") 'delete-backward-char)

(provide '040_helm)
;;; 040_helm.el ends here
