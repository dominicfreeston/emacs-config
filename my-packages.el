;; Setup use-package
;; https://github.com/jwiegley/use-package
(require 'use-package)

;; Make sure environment is same as shell on mac
(use-package exec-path-from-shell
  :if (memq window-system '(mac ns))
  :config
  (exec-path-from-shell-initialize))

;; Theme
(use-package zenburn-theme)

;; Tools
;; PROJECTILE
(use-package projectile
  :config
  (define-key projectile-mode-map (kbd "s-p") 'projectile-command-map)
  (define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)
  (projectile-mode +1))

;; MAGIT
(use-package magit
  :bind
  ("C-x g" . magit-status)
  :config
  (setq magit-display-buffer-function 'magit-display-buffer-same-window-except-diff-v1))

;; SMARTPARENS
(use-package smartparens-config
  :ensure smartparens
  :config
  (smartparens-global-mode t)
  (show-smartparens-global-mode t))

;; YASNIPPET
;; (use-package yasnippet-snippets)
(use-package yasnippet
  :init
  (yas-global-mode 1))

;; COMPANY - better autocompletion
;; http://company-mode.github.io/
;; https://cider.readthedocs.io/en/latest/code_completion/
;; M-n / M-p to scroll
;; C-s to search and C-o to stop
;; C-w to see source, F1 to see documentation
(use-package company
  :config
  (global-company-mode)
  (setq company-idle-delay 1)
  (global-set-key (kbd "TAB") #'company-indent-or-complete-common))

(add-hook 'cider-repl-mode-hook #'cider-company-enable-fuzzy-completion)
(add-hook 'cider-mode-hook #'cider-company-enable-fuzzy-completion)


;; EXPAND-REGION
;; https://github.com/magnars/expand-region.el
;; Does what it says, continue expand with =, contract with -
(use-package expand-region
  :bind
  ("C-=" . er/expand-region))

;; MULTIPLE-CURSORS
;; https://github.com/magnars/multiple-cursors.el
(use-package multiple-cursors)

;; Languages

;; MARKDOWN
;; https://jblevins.org/projects/markdown-mode/
;; C-c C-s for styling
(use-package markdown-mode
  :commands (markdown-mode gfm-mode)
  :mode (("README\\.md\\'" . gfm-mode)
         ("\\.md\\'" . markdown-mode)
         ("\\.markdown\\'" . markdown-mode))
  :init (setq markdown-command "multimarkdown"))

(use-package fennel-mode
  :config
  (put 'for-each 'fennel-indent-function 1)
  (put 'map-each 'fennel-indent-function 1)
  (put 'flatmap-each 'fennel-indent-function 1))

(add-hook 'fennel-mode-hook #'smartparens-strict-mode)
(setq fennel-mode-switch-to-repl-after-reload nil)

(use-package clj-refactor)
(defun my-clojure-mode-hook ()
    (clj-refactor-mode 1)
    (yas-minor-mode 1) ; for adding require/use/import statements
    ;; This choice of keybinding leaves cider-macroexpand-1 unbound
    (cljr-add-keybindings-with-prefix "C-c C-c"))

(use-package clojure-mode)

(add-hook 'clojure-mode-hook #'smartparens-strict-mode)
(add-hook 'clojure-mode-hook #'my-clojure-mode-hook)

(use-package cider)

;; Key-maps

(bind-keys
 :map smartparens-mode-map
 ;; ("H-a" . sp-beginning-of-sexp)
 ;; ("H-e" . sp-end-of-sexp)
 ;; ("H-f" . sp-forward-sexp)
 ;; ("H-b" . sp-backward-sexp)

 ;;("C-<down>" . sp-down-sexp)
 ("M-s u b"   . sp-backward-up-sexp)
 ;; ("M-<down>" . sp-backward-down-sexp)
 ("M-s u e"   . sp-up-sexp)

 ("M-s n" . sp-next-sexp)
 ("M-s p" . sp-previous-sexp)

 ;; ("C-S-f" . sp-forward-symbol)
 ;; ("C-S-b" . sp-backward-symbol)

 ("C-<right>" . sp-forward-slurp-sexp)
 ("C-<left>" . sp-forward-barf-sexp)
 ("M-<left>"  . sp-backward-slurp-sexp)
 ("M-<right>"  . sp-backward-barf-sexp)

 ("C-M-t" . sp-transpose-sexp)
 ("M-k" . sp-kill-sexp)
 ("C-k"   . sp-kill-hybrid-sexp)
 ;; ("M-k"   . sp-backward-kill-sexp)
 ("C-M-w" . sp-copy-sexp)
 
 ("M-[" . sp-backward-unwrap-sexp)
 ("M-]" . sp-unwrap-sexp)
 ("M-p" . sp-splice-sexp))
