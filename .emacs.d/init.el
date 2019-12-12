(defvar lisp-dir (expand-file-name "~/.emacs.d/lisp/")
  "Directory containing elisp configuration files.")

(defvar backup-dir (expand-file-name "~/.emacs.d/backups/")
  "Directory containing file backups.")

(defvar custom-file-name (expand-file-name "~/.emacs.d/custom.el")
  "File containing `Custom` vars.")

(defvar disable-lockfiles t
  "Disable creation of #<file># lockfiles.")

(defvar leader-key "SPC"
  "Leader key for mnemonic command maps")

(defvar alt-leader-key "C-SPC"
  "Leader key for mnemonic command maps in non-normal mode.")

(defvar leader-states '(normal emacs visual motion)
  "States in which leader key is enabled.")


(add-to-list 'load-path lisp-dir)
(require 'init-functions)
(require 'init-packages)
(require 'init-core)
(require 'init-keymaps)
