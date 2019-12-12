;; Global keybindings
(general-define-key
  "M-x" 'helm-M-x)

;; Process menu
(general-define-key
 :definer 'major-mode
 :states 'normal
 :keymaps 'process-menu-mode
 "d" 'process-menu-delete-process)

;; Helm mode
(general-define-key
 :keymaps 'helm-map
 "C-k" 'helm-previous-line
 "C-j" 'helm-next-line
 "C-SPC" 'helm-mark-current-line)

;; Company mode
(general-define-key
 :keymaps 'company-active-map
 "C-j" 'company-select-next
 "C-k" 'company-select-previous
 "C-d" 'evil-delete-backward-char)

;; Unmap leader key in leader states
(general-define-key
 :keymaps leader-states
 leader-key nil)

;; M-x when double tapping leader key
(general-define-key
  :keymaps leader-states
  :prefix leader-key
  :non-normal-prefix alt-leader-key
  leader-key 'helm-M-x)

;; [f]ile keybindings - any mode
(general-define-key
 :keymaps leader-states
 :prefix leader-key
 :non-normal-prefix alt-leader-key
 "f" '(:ignore t :which-key "file")
 "ff" '(helm-find-files :which-key "find file")
 "fs" '(save-buffer :which-key "save buffer")
 "fb" '(helm-buffers-list :which-key "list buffers")
 "fr" '(revert-buffer :which-key "reload buffer"))

;; [w]indow keybindings - any mode
(general-define-key
 :keymaps leader-states
 :prefix leader-key
 :non-normal-prefix alt-leader-key
 "w" '(:ignore t :which-key "window")
 "wn" '(evil-window-vnew :which-key "new right")
 "wN" '(evil-window-new :which-key "new down")
 "ws" '(evil-window-vsplit :which-key "split right")
 "wS" '(evil-window-split :which-key "split down")
 "wc" '(close-window-and-buffer-and-balance :which-key "close window and buffer")
 "wC" '(close-window-and-balance :which-key "close window")
 "wo" '(other-window :which-key "focus other")
 "wh" '(evil-window-left :which-key "focus left")
 "wl" '(evil-window-right :which-key "focus right")
 "wj" '(evil-window-down :which-key "focus down")
 "wk" '(evil-window-up :which-key "focus up"))

;; [h]elp keybinding - any mode
(general-define-key
 :keymaps leader-states
 :prefix leader-key
 :non-normal-prefix alt-leader-key
 "h" '(:ignore t :which-key "help")
 "ha" '(helm-apropos :which-key "describe all")
 "hv" '(describe-variable :which-key "describe var"))

;; [e]val keybindings - any mode
(general-define-key
 :keymaps leader-states
 :prefix leader-key
 :non-normal-prefix alt-leader-key
 "e" '(:ignore t :which-key "eval"))

;; [e]val keybindings - elisp mode
(general-define-key
 :states leader-states
 :keymaps 'emacs-lisp-mode-map
 :prefix leader-key
 :non-normal-prefix alt-leader-key
 "eh" '(eval-last-sexp :which-key "eval last sexp")
 "ee" '(eval-defun :which-key "eval top sexp")
 "eb" '(eval-buffer :which-key "eval buffer")
 "er" '(eval-region :which-key "eval region"))

;; [s]tructural editing - any mode
(general-define-key
 :keymaps leader-states
 :prefix leader-key
 :non-normal-prefix alt-leader-key
 "s" '(:ignore t :which-key "sedit"))

;; [s]tructural editing - elisp mode
(general-define-key
 :states leader-states
 :keymaps 'emacs-lisp-mode-map
 :prefix leader-key
 :non-normal-prefix alt-leader-key)

(provide 'init-keymaps)
