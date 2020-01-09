(defun close-window-and-balance ()
  (interactive)
  (delete-window)
  (balance-windows))

(defun close-window-and-buffer-and-balance ()
  (interactive)
  (kill-buffer-and-window)
  (balance-windows))

(defun switch-to-minibuffer ()
  (interactive)
  (if (active-minibuffer-window)
      (select-window (active-minibuffer-window))
    (error "Minibuffer is not active")))

(provide 'init-functions)
