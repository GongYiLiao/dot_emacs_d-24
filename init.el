(if (equal emacs-version "24.5.1")
    (progn     
      (when (display-graphic-p)
	(setq de_dir user-emacs-directory)
	(setq config_dir "/configs")
	(add-to-list 'load-path (concat de_dir config_dir))
	(require 'configs)
	;; (setq editing_goodies_dir "/editing")
	;; (add-to-list 'load-path (concat de_dir editing_goodies_dir))
	;; (require 'editing-goodies)
	;; (egshell)
	(server-start)))) 
(provide 'init)