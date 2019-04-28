;; Redirect custom
(setq custom-file (concat user-emacs-directory ".emacs-custom.el"))
(load custom-file)

;; Load packages
(load (concat user-emacs-directory "my-packages-setup.el"))
(load (concat user-emacs-directory "my-packages.el"))

;; Further package config
(global-set-key (kbd "C-x g") 'magit-status)
(global-set-key (kbd "C-x M-g") 'magit-dispatch-popup)

;; Load config
(add-hook 'after-init-hook '(lambda ()
			      (load (concat user-emacs-directory "my-config.el"))))
