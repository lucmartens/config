(defun close-window-and-balance ()
  (interactive)
  (delete-window)
  (balance-windows))

(defun close-window-and-buffer-and-balance ()
  (interactive)
  (kill-buffer-and-window)
  (balance-windows))

(provide 'init-functions)
