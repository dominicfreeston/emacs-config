;; Setup use-package
(require 'use-package)

(use-package exec-path-from-shell
  :if (memq window-system '(mac ns))
  :config
  (exec-path-from-shell-initialize))

(use-package magit
  :bind
  ("C-x g" . magit-status))

(use-package smartparens-config
  :ensure smartparens
  :config (smartparens-global-mode t))

(use-package clojure-mode)

(use-package cider)
