;;; 095_popwin.el -- ポップウィンドウの設定

;;; Commentary:
;; 別バッファを入れ替えず一時的に新しいバッファをポップアップする

;;; Code:

(use-package popwin
  :config
  (push '("*Wargings*" :dedicated t) popwin:special-display-config)
  (push '("*Buffer List*" :dedicated t) popwin:special-display-config)
  (push '(eshell-mode :dedicated t) popwin:special-display-config)
  (push '(docker :dedicated t) popwin:special-display-config)
  (popwin-mode 1))

(provide '095_popwin)
;;; 095_popwin.el ends here
