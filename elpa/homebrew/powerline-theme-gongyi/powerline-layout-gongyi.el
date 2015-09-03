;; fancy status line 
(require 'powerline)

;; make poweline ### autoload
(defpowerline powerline-mule-info
    (format-mode-line mode-line-mule-info))

;; 
(defface powerline-minmode-active
  '((t (:background "blue4" :foreground "grey90" :bold t :inherit mode-line)))
  "Powerline face 3."
  :group 'powerline)
(defface powerline-minmode-inactive
  '((t (:background "blue4" :foreground "grey65" :bold nil :inherit mode-line-inactive)))
  "Powerline face 3."
  :group 'powerline) 

;; 
(defface powerline-midbar-active
  '((t (:background "grey50" :foreground "grey95" :inherit mode-line)))
    "Powerline face 4."
    :group 'powerline)
(defface powerline-midbar-inactive
  '((t (:background "grey20" :inherit mode-line-inactive)))
  "Powerline face 4."
  :group 'powerline) 


;; cursor position
(defface powerline-glbtab-active
  '((t (:background "tomato4" :foreground "grey95" :bold t :inherit mode-line)))
  "Powerline face for cursor position tab, active"
  :group 'powerline)
(defface powerline-glbtab-inactive
  '((t (:background "tomato4" :foreground "grey65" :bold nil :inherit mode-line-inactive)))
  "Powerline face for cursor position tab, inactive"
  :group 'powerline) 


(defmacro powerline-layout-gongyi (mjm-active mjm-inactive)
  `(let
      ((mode-line-format-pl
	'("%e"
	  (:eval
	   (let* ((active (powerline-selected-window-active))
		  (face-majmode-tab (if active (quote ,mjm-active) (quote ,mjm-inactive)))
		  (face-minmode-tab (if active 'powerline-minmode-active 'powerline-minmode-inactive))
		  (face-midbar-tab (if active 'powerline-midbar-active 'powerline-midbar-inactive))
		  (face-glbstr-tab (if active 'powerline-glbtab-active 'powerline-glbtab-inactive))
		  (lhs (list
			(powerline-raw (buffer-name) face-majmode-tab 'l)
			(powerline-raw "-" face-majmode-tab 'l)
			(powerline-major-mode face-majmode-tab 'l)
			(powerline-raw " " face-majmode-tab 'l)
			(powerline-arrow-right face-majmode-tab face-minmode-tab)
			(powerline-process face-minmode-tab)
			(powerline-minor-modes face-minmode-tab 'l)
			(powerline-narrow face-minmode-tab 'l)
			(powerline-raw " " face-minmode-tab)
			(powerline-arrow-right face-minmode-tab face-midbar-tab)
			(powerline-vc face-midbar-tab)))
		  (rhs (list
			(powerline-raw "" face-midbar-tab 'r)
			(powerline-arrow-left face-midbar-tab face-glbstr-tab)
			(powerline-raw " " face-glbstr-tab 'r)
			(powerline-raw global-mode-string face-glbstr-tab 'r)
			(powerline-arrow-left face-glbstr-tab nil)
			(powerline-raw " %l:%c %p " nil 'r)			
			(powerline-raw " " nil 'r)			
			(if current-input-method (powerline-mule-info nil 'r) nil))))
	     (concat (powerline-render lhs)
		     (powerline-fill face-midbar-tab (powerline-width rhs))
		     (powerline-render rhs)))))))
    mode-line-format-pl))

(provide 'powerline-layout-gongyi)
