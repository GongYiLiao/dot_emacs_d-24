
(require 'package)

;; 
(add-to-list 'package-archives
     '("melpa-stable" . "http://melpa-stable.milkbox.net/packages/") t)
;;
;; (add-to-list 'package-archives
;;      '("melpa-unstable" . "http://melpa.milkbox.net/packages/") t)

;; initialize package 
(package-initialize)

(setq local_lisp_dir (concat package-user-dir "/homebrew"))
(add-to-list 'load-path local_lisp_dir)

;; powerline gong-yi theme
(add-to-list 'load-path (concat local_lisp_dir
				"/powerline-theme-gongyi"))

;; org gong-yi theme
(add-to-list 'load-path (concat local_lisp_dir
                                "/org-theme-gongyi"))

;; Ergonomic Dvorak CJ5 input 
(add-to-list 'load-path (concat local_lisp_dir
                                "/cj5input-dvorak-ergonomic"))

(provide 'elpa-configs)
