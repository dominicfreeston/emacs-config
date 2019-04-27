;; Load all installed packages
(require 'package)
(add-to-list 'package-archives
             '("melpa-stable" . "https://melpa.org/packages/") t)
(package-initialize)

;; Load config
(add-hook 'after-init-hook '(lambda ()
  (load "~/.emacs.d/my-config.el")))
