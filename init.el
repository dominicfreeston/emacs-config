;; Load packages
(load (concat user-emacs-directory "my-packages.el"))

;; Load config
(add-hook 'after-init-hook '(lambda ()
			      (load (concat user-emacs-directory "my-config.el"))))
