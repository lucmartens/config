(require 'package)
(package-initialize)

(add-to-list 'package-archives
  '("melpa" . "https://melpa.org/packages/") t)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(require 'use-package)
(setq use-package-always-ensure t)

(use-package evil
  :init
  (setq evil-search-module 'evil-search)
  (setq evil-ex-complete-emacs-commands nil)
  (setq evil-vsplit-window-right t)
  (setq evil-split-window-below -1)
  (setq evil-shift-round nil)
  (setq evil-want-C-u-scroll t)
  :config
  (evil-mode))

(use-package which-key
  :config
  (which-key-mode))

(use-package company
  :config
  (global-company-mode))

(use-package general)

(use-package doom-themes
  :config
  (load-theme 'doom-vibrant t))


(provide 'init-packages)
