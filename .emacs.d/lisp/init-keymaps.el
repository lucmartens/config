;; Global keybindings
(general-define-key
  "M-x" 'helm-M-x)

;; Process menu overwrites
(general-define-key
 :definer 'major-mode
 :states 'normal
 :keymaps 'process-menu-mode
 "d" 'process-menu-delete-process)

;; Helm mode overwrites
(general-define-key
 :keymaps 'helm-map
 "C-k" 'helm-previous-line
 "C-j" 'helm-next-line)

;; M-x when double tapping leader key
(general-define-key
  :keymaps '(normal emacs visual)
  :prefix leader-key
  :non-normal-prefix alt-leader-key
  leader-key 'helm-M-x)

;; [f]ile keybindings - any mode
(general-define-key
 :keymaps '(normal emacs visual)
 :prefix leader-key
 :non-normal-prefix alt-leader-key
 "f" '(:ignore t :which-key "file")
 "ff" '(helm-find-files :which-key "find file")
 "fs" '(save-buffer :which-key "save buffer")
 "fb" '(helm-buffers-list :which-key "list buffers")
 "fr" '(revert-buffer :which-key "revert buffer"))

;; [w]indow keybindings - any mode
(general-define-key
 :keymaps '(normal emacs visual)
 :prefix leader-key
 :non-normal-prefix alt-leader-key
 "w" '(:ignore t :which-key "window")
 "wn" '(evil-window-vnew :which-key "new right")
 "wN" '(evil-window-new :which-key "new down")
 "ws" '(evil-window-vsplit :which-key "split right")
 "wS" '(evil-window-split :which-key "split down")
 "wc" '(kill-buffer-and-window :which-key "close window")
 "wo" '(other-window :which-key "focus other")
 "wh" '(evil-window-left :which-key "focus left")
 "wl" '(evil-window-right :which-key "focus right")
 "wj" '(evil-window-down :which-key "focus down")
 "wk" '(evil-window-up :which-key "focus up"))


;; [e]val keybindings - any mode
(general-define-key
 :states '(normal emacs visual)
 :keymaps 'emacs-lisp-mode-map
 :prefix leader-key
 :non-normal-prefix alt-leader-key
 "e" '(:ignore t :which-key "eval"))

;; [e]val keybindings - elisp mode
(general-define-key
 :states '(normal emacs visual)
 :keymaps 'emacs-lisp-mode-map
 :prefix leader-key
 :non-normal-prefix alt-leader-key
 "es" '(eval-last-sexp :which-key "eval last sexp")
 "ee" '(eval-defun :which-key "eval top sexp")
 "eb" '(eval-buffer :which-key "eval buffer")
 "er" '(eval-region :which-key "eval region"))

;; [e]val keybindings - clojure mode


(provide 'init-keymaps)
