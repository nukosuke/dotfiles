;;; diminish.el --- hide minor modes from mode line
;;; Commentary:
;;; Code:

(use-package diminish
  :config
  (diminish 'anzu-mode)
  (diminish 'company-mode)
  (diminish 'git-gutter+-mode)
  (diminish 'helm-mode)
  (diminish 'volatile-highlights-mode))

(provide '007_diminish)
;;; 007_diminish.el ends here
