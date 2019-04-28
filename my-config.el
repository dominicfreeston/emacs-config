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

;; Enable emoji, and stop the UI from freezing when trying to display them.
(when (fboundp 'set-fontset-font)
  (set-fontset-font t 'unicode "Apple Color Emoji" nil 'prepend))

;; Backups and Autosaves
(defvar --backup-directory (concat user-emacs-directory "backups"))
(if (not (file-exists-p --backup-directory))
        (make-directory --backup-directory t))
(setq backup-directory-alist `(("." . ,--backup-directory)))
(setq vc-make-backup-files t)

