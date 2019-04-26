;; Prettify
(load-theme 'tango-dark)

(tool-bar-mode -1)
(scroll-bar-mode -1)
(global-visual-line-mode 1)

(add-to-list 'default-frame-alist '(font . "Source Code Pro 14"))
(add-to-list 'default-frame-alist '(ns-transparent-titlebar . t))
(add-to-list 'default-frame-alist '(ns-appearance . dark))
(add-to-list 'default-frame-alist '(fullscreen . maximized))

(setq frame-title-format nil)
(setq inhibit-startup-screen t)

;; Sensible Defaults
(setq ring-bell-function 'ignore)
(setq mac-right-option-modifier nil)
(fset 'yes-or-no-p 'y-or-n-p)
(define-key global-map (kbd "RET") 'newline-and-indent)

;; Backups and Autosaves
(defvar --backup-directory (concat user-emacs-directory "backups"))
(if (not (file-exists-p --backup-directory))
        (make-directory --backup-directory t))
(setq backup-directory-alist `(("." . ,--backup-directory)))

;; Editing
(electric-pair-mode 1)
