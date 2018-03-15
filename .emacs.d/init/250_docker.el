;;; 250_docker.el --- Docker管理

;;; Commentary:
;; dockerコマンドが存在するときのみ有効化する

;;; Code:

(use-package docker
  :if (executable-find "docker")
  :config (docker-global-mode))

;;; 250_docker.el ends here
