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
  :init
  (setq which-key-idle-delay 0.5)
  (setq which-key-idle-secondary-delay 0.2)
  (setq which-key-popup-type 'minibuffer)
  ;(setq which-key-side-window-location 'right)
  ;(setq which-key-show-prefix 'top)
  :config
  (which-key-mode))

(use-package helm
  :config
  (helm-mode t))

(use-package helm-ag)

(use-package company
  :config
  (global-company-mode))

(use-package general)

(use-package projectile
  :config
  (projectile-mode))

(use-package helm-projectile
  :config
  (helm-projectile-on))

(use-package doom-themes
  :config
  (load-theme 'doom-vibrant t))

(use-package add-node-modules-path
  :hook js-mode-hook)

(use-package prettier-js
  :hook js-mode-hook)

(use-package clojure-mode)

(use-package parinfer
  :init
  (setq parinfer-extensions
        '(defaults       ; should be included.
          pretty-parens  ; different paren styles for different modes.
          evil           ; If you use Evil.
          paredit        ; Introduce some paredit commands.
          smart-yank))   ; Yank behavior depend on mode.
  :hook
  (lisp-mode . parinfer-mode)
  (clojure-mode . parinfer-mode)
  (clojurescript-mode . parinfer-mode)
  (emacs-lisp-mode . parinfer-mode))

(use-package clj-refactor
  :hook (clojure-mode . clj-refactor-mode))

(use-package cider)

(use-package markdown-mode)

(provide 'init-packages)
