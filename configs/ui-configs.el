;;
(column-number-mode 1)
(show-paren-mode 1)
(transient-mark-mode 1)
(set-default 'truncate-lines t)

;; 
(tool-bar-mode 0)
(menu-bar-mode 0)
(scroll-bar-mode 0)

;; solarized theme over gongyi 
(require 'sanityinc-solarized-light-theme)

;; mode line layout  
(require 'powerline-theme-gongyi)
(powerline-theme-gongyi)

;; font size
(if (find (x-display-pixel-height) '(1280 800))
    (progn 
	(set-face-attribute 'default nil :height 90))
    (progn 
	(set-face-attribute 'default nil :height 100)))

;; typeface 
(set-face-attribute 'default nil :font "Source Code Pro")
(set-fontset-font (frame-parameter nil 'font) 
		  'han
		  (font-spec :family "Noto Sans CJK TC"))

(provide 'ui-configs)

