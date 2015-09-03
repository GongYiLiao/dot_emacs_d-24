
;;
(winner-mode t)
(windmove-default-keybindings)
(global-set-key (kbd "C-M-2") 'winner-redo)
(global-set-key (kbd "C-M-1") 'winner-undo)

;;
;; global keybinding for all platforms
(global-set-key "\C-x\C-c" 'ignore)
(global-unset-key (kbd "C-SPC"))
(defun exit-no-prompt-emacs ()
    (interactive)
    (ergoemacs-mode 0)
    (save-buffers-kill-emacs))
(global-set-key (kbd "C-M-S-Q") 'exit-no-prompt-emacs)

;;
(setq ergoemacs-theme nil)
(setq ergoemacs-keyboard-layout "dv")
(setenv "ERGOEMACS_KEYBOARD_LAYOUT" "dv")
(require 'ergoemacs-mode)
(defun egshell()
    (interactive)
    (ergoemacs-eshell-here))
(ergoemacs-mode t)

;;
(provide 'keyboard-configs)
