;;; yasnippet-init.el -- yasnippet初期化
;;; Commentary:
;;; Code:
(require 'yasnippet)
(require 'popup)

;; スニペットのディレクトリを追加
(setq yas-snippet-dirs
      '("~/.emacs.d/snippets"
        "~/.emacs.d/elpa/yasnippet-20150415.244/snippets"
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

;; 有効化
(yas-global-mode 1)

;;; yasnippet-init.el ends here
