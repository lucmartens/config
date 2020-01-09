;; Global keybindings
(general-define-key
  "M-x" 'helm-M-x
  "ESC" 'keyboard-quit)

;; Process menu
(general-define-key
 :states leader-states
 :keymaps 'process-menu-mode-map
 "d" 'process-menu-delete-process)

;; Helm mode
(general-define-key
 :keymaps '(helm-map helm-buffer-map helm-M-x-map)
 "C-k" 'helm-previous-line
 "C-j" 'helm-next-line
 "C-d" 'helm-buffer-run-kill-persistent
 "ESC" 'helm-keyboard-quit)

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

;; [g]eneral keybindings - any mode
(general-define-key
 :keymaps leader-states
 :prefix leader-key
 :non-normal-prefix alt-leader-key
 "g" '(:ignore t :which-key "general")
 "gp" '(list-processes :which-key "list processes")
 "gr" '(display-fill-column-indicator-mode :which-key "toggle column ruler"))

;; [f]ile keybindings - any mode
(general-define-key
 :keymaps leader-states
 :prefix leader-key
 :non-normal-prefix alt-leader-key
 "f" '(:ignore t :which-key "file")
 "ff" '(helm-find-files :which-key "find file")
 "fs" '(save-buffer :which-key "save buffer")
 "fb" '(helm-buffers-list :which-key "list buffers")
 "fr" '(revert-buffer :which-key "reload buffer")
 "fd" '(kill-this-buffer :which-key "kill this buffer")
 "fD" '(kill-buffer :which-key "kill buffer"))

;; [p]roject keybindings - any mode
(general-define-key
 :keymaps leader-states
 :prefix leader-key
 :non-normal-prefix alt-leader-key
 "p" '(:ignore t :which-key "project")
 "ps" '(helm-projectile-switch-project :which-key "switch project")
 "pc" '(projectile-kill-buffers :which-key "close project")
 "pf" '(helm-projectile-find-file :which-key "find file")
 "pF" '(helm-projectile-find-file-in-known-projects :which-key "find known file")
 "pt" '(helm-projectile-ag :which-key "find text")
 "pa" '(helm-projectile :which-key "list all"))

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
 "wd" '(close-window-and-buffer-and-balance :which-key "close window and buffer")
 "wc" '(close-window-and-balance :which-key "close window")
 "wo" '(other-window :which-key "focus other")
 "wh" '(evil-window-left :which-key "focus left")
 "wl" '(evil-window-right :which-key "focus right")
 "wj" '(evil-window-down :which-key "focus down")
 "wk" '(evil-window-up :which-key "focus up")
 "wm" '(switch-to-minibuffer :which-key "focus minibuffer"))

;; [h]elp keybindings - any mode
(general-define-key
 :keymaps leader-states
 :prefix leader-key
 :non-normal-prefix alt-leader-key
 "h" '(:ignore t :which-key "help")
 "ha" '(helm-apropos :which-key "describe all"))

;; [h]elp keybindings - clojure mode
(general-define-key
 :states leader-states
 :keymaps 'clojure-mode-map
 :prefix leader-key
 :non-normal-prefix alt-leader-key
 "hh" '(cider-doc :which-key "doc")
 "hv" '(cider-find-var :which-key "find var")
 "hn" '(cider-find-ns :which-key "find ns")
 "hs" '(cider-browse-spec :which-key "browse spec"))

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

;; eval keybindings - clojure mode
(general-define-key
 :states leader-states
 :keymaps 'clojure-mode-map
 :prefix leader-key
 :non-normal-prefix alt-leader-key
 "eh" '(cider-eval-last-sexp :which-key "eval last sexp")
 "el" '(cider-eval-sexp-at-point :which-key "eval sexp")
 "ee" '(cider-eval-defun-at-point :which-key "eval top sexp")
 "eb" '(cider-eval-buffer :which-key "eval buffer")
 "er" '(cider-eval-region :which-key "eval region")
 "en" '(cider-eval-ns-form :which-key "eval ns")
 "ec" '(cider-jack-in :which-key "jack-in")
 "eC" '(cider-jack-in-clj&cljs :which-key "jack-in cljc"))

;; [s]tructural editing - any mode
(general-define-key
 :keymaps leader-states
 :prefix leader-key
 :non-normal-prefix alt-leader-key
 "s" '(:ignore t :which-key "sedit"))

;; [s]tructural editing - clojure mode
(general-define-key
 :states leader-states
 :keymaps 'clojure-mode-map
 :prefix leader-key
 :non-normal-prefix alt-leader-key
 "sf" '(cider-format-buffer :which-key "format buffer")
 "sv" '(clojure-align :which-key "vertical align sexp")
 "st" '(clojure-thread-first-all :which-key "thread first")
 "sT" '(clojure-thread-last-all :which-key "thread last")
 "sa" '(clojure-add-arity :which-key "add arity")
 "sp" '(parinfer-toggle-mode :which-key "parinfer toggle"))

;; [s]tructural editing - elisp mode
(general-define-key
 :states leader-states
 :keymaps 'emacs-lisp-mode-map
 :prefix leader-key
 :non-normal-prefix alt-leader-key
 "sp" '(parinfer-toggle-mode :which-key "parinfer toggle"))


;; [s]tructural editing - javascript mode
(general-define-key
 :states leader-states
 :keymaps 'js-mode-map
 :prefix leader-key
 :non-normal-prefix alt-leader-key
 "sf" '(prettier-js :which-key "format buffer"))

(provide 'init-keymaps)
