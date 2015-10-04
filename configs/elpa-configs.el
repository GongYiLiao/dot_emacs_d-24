
(require 'package)

;; 
(add-to-list 'package-archives
     '("melpa-stable" . "http://melpa-stable.milkbox.net/packages/") t)
;;
;; (add-to-list 'package-archives
;;      '("melpa-unstable" . "http://melpa.milkbox.net/packages/") t)

;; initialize package 
(package-initialize)

(setq local-lisp-dir (concat package-user-dir "/homebrew"))
(add-to-list 'load-path local-lisp-dir)

;; powerline gong-yi theme
(add-to-list 'load-path (concat local-lisp-dir
				"/powerline-theme-gongyi"))

;; org gong-yi theme
(add-to-list 'load-path (concat local-lisp-dir
                                "/org-theme-gongyi"))

;; Ergonomic Dvorak CJ5 input 
(add-to-list 'load-path (concat local-lisp-dir
                                "/cj5input-dvorak-ergonomic"))

(provide 'elpa-configs)
