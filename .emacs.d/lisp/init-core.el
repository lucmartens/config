;; Modify location of custom file.
(setq-default custom-file custom-file-name)
(load custom-file 'noerror)

;; Modify backup settings.
(setq backup-by-copying t)
(setq backup-directory-alist `(("." . ,backup-dir)))
(setq delete-old-versions t)
(setq kept-new-versions 6)
(setq kept-old-versions 2)
(setq version-control t)

;; Disable lock-files
(when disable-lockfiles
  (setq create-lockfiles nil))

;; Reduce noise.
(setq-default visible-bell nil)
(setq ring-bell-function 'ignore)
(setq inhibit-splash-screen t)
(scroll-bar-mode -1)
(tool-bar-mode -1)
(menu-bar-mode -1)

;; Modify display settings.
(global-display-line-numbers-mode +1) ; Display line-numbers in gutter.
(column-number-mode +1)               ; Display column numbers in mode line.
(show-paren-mode 1)                   ; Highlight matching parens.
(global-hl-line-mode)                 ; Highlight current line
(setq-default line-spacing '0.5)      ; Increase line-spacing.

; Display ruler at column 80
(setq-default display-fill-column-indicator-column 80)

;; Prefered indentation
(setq evil-shift-width 2)
(setq js-indent-level 2)
(setq indent-tabs-mode nil)

;; Delete trailing whitespace on save
(add-hook 'write-file-hooks 'delete-trailing-whitespace)

(provide 'init-core)
