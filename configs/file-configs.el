

;; 
(prefer-coding-system 'utf-8)
(setq coding-system-for-write 'utf-8)

;;
(setq-default use-file-dialog nil)
(setq backup-inhibited t)
(setq auto-save-default nil)
(setq inhibit-startup-message t)
(setq inhibit-splash-screen t)
(setq initial-scratch-message nil)

;; file & directory management 
(require 'dired+)
(toggle-diredp-find-file-reuse-dir 1)

(provide 'file-configs)
