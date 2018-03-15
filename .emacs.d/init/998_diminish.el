;;; 998_diminish.el --- モードラインから特定のモードを非表示にする

;;; Commentary:
;; 基本的にグローバルでOnになっているものは表示しても仕方ないので非表示
;; 特定のメジャーモードの時だけ有効になるマイナーモードなどは表示

;;; Code:

(use-package diminish
  :config
  (diminish 'anzu-mode)
  (diminish 'company-mode)
  (diminish 'git-gutter+-mode)
  (diminish 'helm-mode)
  (diminish 'volatile-highlights-mode)
  (diminish 'docker-mode))

(provide '998_diminish)
;;; 998_diminish.el ends here
