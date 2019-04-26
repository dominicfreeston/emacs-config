(tool-bar-mode -1)
(scroll-bar-mode -1)
(setq ring-bell-function 'ignore)
(setq backup-directory-alist '(("" . "~/.emacs.d/backups")))
(fset 'yes-or-no-p 'y-or-n-p)

(set-default-font "Source Code Pro 14")
(global-visual-line-mode 1)

(setq mac-right-option-modifier nil)
(define-key global-map (kbd "RET") 'newline-and-indent)
