;; Setup use-package
(require 'use-package)

(use-package exec-path-from-shell
  :if (memq window-system '(mac ns))
  :config
  (exec-path-from-shell-initialize))

;; Tools
(use-package projectile)
(use-package magit
  :bind
  ("C-x g" . magit-status))
(use-package smartparens-config
  :ensure smartparens
  :config
  (smartparens-global-mode t))

;; Languages
(use-package fennel-mode)
(use-package clojure-mode)
(use-package cider)


;; Key-maps

(bind-keys
 :map smartparens-mode-map
 ("H-a" . sp-beginning-of-sexp)
 ("H-e" . sp-end-of-sexp)
 ("H-f" . sp-forward-sexp)
 ("H-b" . sp-backward-sexp)

 ("C-<down>" . sp-down-sexp)
 ("C-<up>"   . sp-backward-up-sexp)
 ("M-<down>" . sp-backward-down-sexp)
 ("M-<up>"   . sp-up-sexp)

 ("H-n" . sp-next-sexp)
 ("H-p" . sp-previous-sexp)

 ("C-S-f" . sp-forward-symbol)
 ("C-S-b" . sp-backward-symbol)

 ("C-<right>" . sp-forward-slurp-sexp)
 ("C-<left>" . sp-forward-barf-sexp)
 ("M-<left>"  . sp-backward-slurp-sexp)
 ("M-<right>"  . sp-backward-barf-sexp)

 ("C-M-t" . sp-transpose-sexp)
 ("C-M-k" . sp-kill-sexp)
 ("C-k"   . sp-kill-hybrid-sexp)
 ("M-k"   . sp-backward-kill-sexp)
 ("C-M-w" . sp-copy-sexp)
 
 ("M-[" . sp-backward-unwrap-sexp)
 ("M-]" . sp-unwrap-sexp)
 ("M-p" . sp-splice-sexp))
