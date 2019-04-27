;; Load all installed packages
(require 'package)

;; List of required packages
(setq package-selected-packages
  '(
    magit
    ))

;; Setup archives and download packages
(add-to-list 'package-archives
             '("melpa-stable" . "https://melpa.org/packages/") t)

(package-initialize)

(when (not package-archive-contents)
  (message "%s" "Emacs is now refreshing its package database...")
  (package-refresh-contents))

(package-install-selected-packages)

;; Load config
(add-hook 'after-init-hook '(lambda ()
			      (load (concat user-emacs-directory "my-config.el"))))
