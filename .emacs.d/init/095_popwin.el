;;; 095_popwin.el -- ポップウィンドウの設定

;;; Commentary:
;; 別バッファを入れ替えず一時的に新しいバッファをポップアップする

;;; Code:

(use-package shackle
  :config
  (setq helm-display-function #'pop-to-buffer)
  (setq shackle-rules
        '(("*Wargings*" :dedicated t)
          ("*Buffer List*" :dedicated t)
          ("COMMIT_EDITMSG" :popup t)
          ("\\`\\*helm.*?\\*\\'" :regexp t :align t :size 0.4)
          (eshell-mode :dedicated t)
          (docker :dedicated t))))

(provide '095_popwin)
;;; 095_popwin.el ends here
