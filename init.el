;; Redirect custom
(setq custom-file (concat user-emacs-directory ".emacs-custom.el"))
(load custom-file)

;; Load packages
(load (concat user-emacs-directory "my-packages-setup.el"))
(load (concat user-emacs-directory "my-packages.el"))

;; Load config
(add-hook 'after-init-hook '(lambda ()
			      (load (concat user-emacs-directory "my-config.el"))))
