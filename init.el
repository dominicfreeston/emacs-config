;; Load packages
(load (concat user-emacs-directory "my-packages.el"))

;; Further package config
(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize))

(require 'smartparens-config)
(smartparens-global-mode 1)

(global-set-key (kbd "C-x g") 'magit-status)
(global-set-key (kbd "C-x M-g") 'magit-dispatch-popup)

;; Load config
(add-hook 'after-init-hook '(lambda ()
			      (load (concat user-emacs-directory "my-config.el"))))
