;;
;; 
(require 'org)

;;
(defun org-theme-gongyi ()
  (interactive)
  (set-face-attribute 'org-level-1 nil
		      :foreground "DarkGreen"
		      :weight 'bold
		      :slant 'normal
		      :height 1.55)
  ;; 
  (set-face-attribute 'org-level-2 nil
		      :foreground "SaddleBrown"
		      :weight 'bold
		      :slant 'normal
		      :height 1.45)
  ;; 
  (set-face-attribute 'org-level-3 nil
		      :foreground "navy"
		      :weight 'bold
		      :slant 'normal
		      :height 1.35)
  ;; 
  (set-face-attribute 'org-level-4 nil
		      :foreground "DarkGoldenrod"
		      :weight 'bold
		      :slant 'normal
		      :height 1.25)
  ;; 
  (set-face-attribute 'org-level-5 nil
		      :foreground "IndianRed3"
		      :weight 'bold
		      :slant 'normal
		      :height 1.20)
  ;; 
  (set-face-attribute 'org-level-6 nil
		      :foreground "SkyBlue4"
		      :weight 'bold
		      :slant 'italic
		      :height 1.15)
  ;; 
  (set-face-attribute 'org-level-7 nil
		      :foreground "purple3"
		      :weight 'normal
		      :slant 'normal
		      :height 1.10)
  ;; 
  (set-face-attribute 'org-level-8 nil
		      :foreground "SeaGreen3"
		      :weight 'normal
		      :slant 'italic
		      :height 1.05))
;;
(org-theme-gongyi)
(provide 'org-theme-gongyi)

