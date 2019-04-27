;; Load packages
(load (concat user-emacs-directory "my-packages.el"))

;; Further package config
(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize))

;; Load config
(add-hook 'after-init-hook '(lambda ()
			      (load (concat user-emacs-directory "my-config.el"))))
