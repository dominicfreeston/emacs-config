;; Load all installed packages
(require 'package)

;; List of required packages
(setq package-selected-packages
      '(
	clojure-mode
	cider
	magit
	exec-path-from-shell
	))

;; Setup archives and download packages
(add-to-list 'package-archives
             '("melpa-stable" . "https://melpa.org/packages/") t)

(package-initialize)

(when (not package-archive-contents)
  (message "%s" "Emacs is now refreshing its package database...")
  (package-refresh-contents))

(package-install-selected-packages)
