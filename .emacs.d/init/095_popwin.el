;;; 095_popwin.el -- ポップウィンドウの設定

;;; Commentary:
;; 別バッファを入れ替えず一時的に新しいバッファをポップアップする

;;; Code:

(use-package shackle
  :config
  (setq helm-display-function 'pop-to-buffer)
  (setq shackle-rules
        '(("*Wargings*" :same t)
          ("\*Buffer List" :regexp t :select t :align t :size 0.4)
          ("COMMIT_EDITMSG" :select t :align t :size 0.4)
          ("\\`\\*helm.*?\\*\\'" :regexp t :align t :size 0.4)
          (eshell-mode :dedicated t)
          (docker :dedicated t)))
  (shackle-mode)
  (winner-mode)
  (global-set-key (kbd "C-z") 'winner-undo))

(provide '095_popwin)
;;; 095_popwin.el ends here
