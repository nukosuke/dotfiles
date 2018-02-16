(use-package helm :straight t)
(use-package helm-config)
(helm-mode 1)

(define-key global-map (kbd "C-x C-f") 'helm-find-files)
(define-key global-map (kbd "C-x b") 'helm-buffers-list)
(define-key helm-map (kbd "C-h") 'delete-backward-char)

