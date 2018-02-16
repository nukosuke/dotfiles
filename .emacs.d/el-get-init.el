;;; el-get-init -- パッケージマネージャEl-Getの初期化
;;; Commentary:
;;; Code:

(add-to-list 'load-path (locate-user-emacs-file "el-get/el-get"))
(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.githubusercontent.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))

(el-get-bundle purcell/exec-path-from-shell)

(el-get-bundle elpa:anzu)
(el-get-bundle elpa:bind-key)
(el-get-bundle elpa:cmake-mode)
(el-get-bundle elpa:dash)
(el-get-bundle spotify/dockerfile-mode)
(el-get-bundle elpa:drag-stuff)
(el-get-bundle shosti/elscreen)
(el-get-bundle elscreen-wl
  :type git
  :url "https://github.com/syohex/emacs-elscreen-wl.git")
(el-get-bundle elpa:erlang)
(el-get-bundle elpa:exec-path-from-shell)
(el-get-bundle elpa:expand-region)
(el-get-bundle elpa:f)
(el-get-bundle elpa:flycheck)
(el-get-bundle elpa:flycheck-color-mode-line)
(el-get-bundle elpa:fuzzy)
(el-get-bundle defunkt/gist)
(el-get-bundle elpa:gitignore-mode)
(el-get-bundle elpa:hc-zenburn-theme)
(el-get-bundle elpa:helm-ls-git)
(el-get-bundle elpa:highlight-symbol)
(el-get-bundle elpa:htmlize)
(el-get-bundle elpa:idle-highlight-mode)
(el-get-bundle elpa:json-mode)
(el-get-bundle sigma/logito)
(el-get-bundle elpa:lua-mode)
(el-get-bundle elpa:markdown-mode)
(el-get-bundle elpa:mew)
(el-get-bundle elpa:multiple-cursors)
(el-get-bundle elpa:open-junk-file)
(el-get-bundle sigma/pcache)
(el-get-bundle elpa:popup)
(el-get-bundle elpa:popwin)
(el-get-bundle elpa:powerline)
(el-get-bundle elpa:prodigy)
(el-get-bundle elpa:projectile)
(el-get-bundle elpa:protobuf-mode)
(el-get-bundle elpa:s)
(el-get-bundle elpa:sequential-command)
(el-get-bundle elpa:slim-mode)
(el-get-bundle elpa:smartparens)
(el-get-bundle elpa:smartrep)
(el-get-bundle elpa:smooth-scroll)
(el-get-bundle sigma/tabulated-list)
(el-get-bundle hayamiz/twittering-mode)
(el-get-bundle elpa:typescript-mode)
(el-get-bundle tide)
(el-get-bundle elpa:undo-tree)
(el-get-bundle elpa:volatile-highlights)
(el-get-bundle elpa:win-switch)
(el-get-bundle elpa:w3m)
(el-get-bundle elpa:yasnippet)

(provide 'el-get-init)
;;; el-get-init.el ends here
