;;; yasnippet.el -- yasnippet初期化
;;; Commentary:
;;; Code:
(use-package yasnippet :straight t)
(use-package yasnippet-snippets :straight t)
(yas-global-mode 1)

;; スニペットのディレクトリを追加
(setq yas-snippet-dirs
      '("~/.emacs.d/snippets"
        "~/.emacs.d/straight/repos/yasnippet-snippets/snippets"
        ))

;; タブで補完を起動
(custom-set-variables '(yas-trigger-key "TAB"))

;; popupに候補を表示
(defun yas-popup-isearch-prompt (prompt choices &optional display-fn)
  (when (featurep 'popup)
    (popup-menu*
     (mapcar
      (lambda (choice)
        (popup-make-item
         (or (and display-fn (funcall display-fn choice))
             choice)
         :value choice))
      choices)
     :prompt prompt
     ;; start isearch mode immediately
     :isearch t
     )))

(setq yas-prompt-functions '(yas-popup-isearch-prompt yas-ido-prompt yas-no-prompt))

;;; yasnippet-init.el ends here
