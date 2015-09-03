;; chinese input method
(defun load-cj5 ()
  (interactive)
  (require 'cj5input-dvorak-ergonomic)
  (set-input-method "CJ5_DVORAK_ERGONOMIC"))

(provide 'natlang-configs) 
