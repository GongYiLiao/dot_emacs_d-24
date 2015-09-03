;; preempty the yasnippet
(require 'yasnippet)

;; Eshell configs
(setq eshell-directory-name (concat de_dir "/eshell"))

;; Eshell prompt function 
(defun curr-dir-git-branch-string (pwd)
    "Returns current git branch as a string, or the empty string if PWD is not in a git repo (or the git command is not found)."
    (interactive)
    (when (and (eshell-search-path "git") 
	      (locate-dominating-file pwd ".git"))
	(let ((git-output (shell-command-to-string (concat "cd '" pwd "' && git branch | grep '\\*' | sed -e 's/^\\* //'"))))
	    (propertize (concat "["
			    (if (> (length git-output) 0)
				(substring git-output 0 -1)
				"(no branch)")
			    "]") 'face `(:foreground "DarkGoldenrod")))))
  
(defun my-unix-eshell-prompt ()
  (concat
   (propertize (getenv "USER") 'face `(:foreground "red")) "@" 
   (propertize (system-name) 'face `(:foreground "darkgreen")) ":"
   (propertize 
    ((lambda (p-lst)
       (if (> (length p-lst) 3)
	   (concat
	    (mapconcat (lambda (elm) 
			 (if (zerop (length elm)) ""
			   (substring elm 0 1)))
		       (butlast p-lst 3) "/") "/"
		       (mapconcat (lambda (elm) elm)
				  (last p-lst 3) "/"))
	 (mapconcat (lambda (elm) elm) p-lst "/")))
     (split-string (abbreviate-file-name (eshell/pwd)) "/")) 'face `(:foreground "blue")) ":"
     (or (curr-dir-git-branch-string (eshell/pwd)))
     (propertize (format-time-string "%H:%M:%S") 'face `(:foreground "purple"))
     (if (= (user-uid) 0) "\n # " "\n $ ")))

(setq eshell-prompt-function 'my-unix-eshell-prompt)

;; System PATH 
(setq exec-path
      (append
       (split-string-and-unquote (getenv "PATH") ":")
       exec-path))

;; screen commands
(if (eq system-type 'gnu/linux)
    (progn 
      (add-hook 'eshell-first-time-mode-hook 
		(lambda () 
		  (setq eshell-visual-commands 
			(append '("most" "vim" "screen" "htop" "top" "telnet" "ipython" "ipython3" "sftp" "ssh" "sagemath")
				eshell-visual-commands))))))

(provide 'shell-configs)
