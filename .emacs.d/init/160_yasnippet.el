;;; yasnippet.el -- yasnippet初期化
;;; Commentary:
;;; Code:

(use-package yasnippet
  :after company
  :diminish yas-minor-mode
  :custom
  (yas-snippet-dirs '("~/.emacs.d/snippets"
                      "~/.emacs.d/straight/repos/yasnippet-snippets/snippets") "スニペットのディレクトリ")

  :config
  (yas-global-mode 1)
  (defvar company-mode/enable-yas t)

  (defun company-mode/backend-with-yas (backend)
    (if (or (not company-mode/enable-yas) (and (listp backend) (member 'company-yasnippet backend)))
	    backend
	  (append (if (consp backend) backend (list backend))
			  '(:with company-yasnippet))))
  (defun set-yas-as-company-backend ()
    (setq company-backends (mapcar #'company-mode/backend-with-yas company-backends)))
  (add-hook 'company-mode-hook 'set-yas-as-company-backend))

(use-package yasnippet-snippets
  :after yasnippet)

;;; yasnippet-init.el ends here
