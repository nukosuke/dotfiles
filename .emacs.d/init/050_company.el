;;; 050_company.el -- 補完機能設定
;;; Commentary:
;;; Code:

(use-package company
  :init
  (global-company-mode)
  ;; 下までいったら上に戻ってくる（逆も同じ）
  (setq company-selection-wrap-around t)

  :bind
  (:map company-active-map
        ("M-n" . nil)
        ("M-p" . nil)
        ("C-n" . company-select-next)
        ("C-p" . company-select-previous)
        ("C-h" . nil)))

(provide '050_company)
;;; 050_company.el ends here
