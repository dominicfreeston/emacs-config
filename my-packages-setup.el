(require 'package)

;; Setup archives and download packages
(add-to-list 'package-archives
             '("melpa-stable" . "https://melpa.org/packages/") t)
(package-initialize)

(when (not package-archive-contents)
  (message "%s" "Emacs is now refreshing its package database...")
  (package-refresh-contents))

;; Install use-package
(when (not (package-installed-p 'use-package))
  (package-install 'use-package))

;; Ensure all packages
(require 'use-package-ensure)
(setq use-package-always-ensure t)
