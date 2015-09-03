
(require 'powerline-layout-gongyi)

(defun powerline-theme-gongyi ()
  ;; load required modes
  (require 'ess-site)
  
  ;; emacs lisp powerline for mat 
  (defun elisp-powerline ()
    (defface powerline-elisp-majmode-active
      '((t (:background "chartreuse4" :foreground "grey85" :bold t :inherit mode-line)))
      "Powerline face for emacs lisp major mode, active"
      :group 'powerline)
    (defface powerline-elisp-majmode-inactive
      '((t (:background "chartreuse1" :foreground "grey22" :bold nil :inherit mode-line-inactive)))
      "Powerline face for emacs lisp major mode, inactive"
      :group 'powerline)  
    (setq mode-line-format
	  (powerline-layout-gongyi
	   powerline-elisp-majmode-active
	   powerline-elisp-majmode-inactive)))
  (add-hook 'emacs-lisp-mode-hook 'elisp-powerline)

  ;; C
  (defun c-powerline ()
    (defface powerline-c-majmode-active
      '((t (:background "cyan4" :foreground "grey85" :bold t :inherit mode-line)))
      "Powerline face for C major mode, active"
      :group 'powerline)
    (defface powerline-c-majmode-inactive
      '((t (:background "cyan1" :foreground "grey22" :bold nil :inherit mode-line-inactive)))
      "Powerline face for C major mode, inactive"
      :group 'powerline)  
    (setq mode-line-format
	  (powerline-layout-gongyi
	   powerline-c-majmode-active
	   powerline-c-majmode-inactive)))
  (add-hook 'c-mode-hook 'c-powerline)

  ;; C++
  (defun c++-powerline ()
    (defface powerline-c++-majmode-active
      '((t (:background "DeepSkyBlue4" :foreground "grey85" :bold t :inherit mode-line)))
      "Powerline face for C++ major mode, active"
      :group 'powerline)
    (defface powerline-c++-majmode-inactive
      '((t (:background "DeepSkyBlue1" :foreground "grey22" :bold nil :inherit mode-line-inactive)))
      "Powerline face for C++ major mode, inactive"
      :group 'powerline)  
    (setq mode-line-format
	  (powerline-layout-gongyi
	   powerline-c++-majmode-active
	   powerline-c++-majmode-inactive)))
  (add-hook 'c++-mode-hook 'c++-powerline)
  (add-hook 'cpp-omnet-mode-hook 'c++-powerline)

  ;; haskell 
  (defun haskell-powerline ()
    (defface powerline-haskell-majmode-active
      '((t (:background "RoyalBlue3" :foreground "grey85" :bold t :inherit mode-line)))
      "Powerline face for haskell major mode, active"
      :group 'powerline)
    (defface powerline-haskell-majmode-inactive
      '((t (:background "RoyalBlue1" :foreground "grey22" :bold nil :inherit mode-line-inactive)))
      "Powerline face for haskell major mode, inactive"
      :group 'powerline)  
    (setq mode-line-format
	  (powerline-layout-gongyi
	   powerline-haskell-majmode-active
	   powerline-haskell-majmode-inactive)))
  (add-hook 'haskell-mode-hook 'haskell-powerline)

  ;; java 
  (defun java-powerline ()
    (defface powerline-java-majmode-active
      '((t (:background "OrangeRed3" :foreground "grey85" :bold t :inherit mode-line)))
      "Powerline face for java major mode, active"
      :group 'powerline)
    (defface powerline-java-majmode-inactive
      '((t (:background "OrangeRed1" :foreground "grey22" :bold nil :inherit mode-line-inactive)))
      "Powerline face for java major mode, inactive"
      :group 'powerline)  
    (setq mode-line-format
	  (powerline-layout-gongyi
	   powerline-java-majmode-active
	   powerline-java-majmode-inactive)))
  (add-hook 'java-mode-hook 'java-powerline)
  
  ;; python 
  (defun python-powerline ()
    (defface powerline-python-majmode-active
      '((t (:background "DodgerBlue4" :foreground "grey85" :bold t :inherit mode-line)))
      "Powerline face for python major mode, active"
      :group 'powerline)
    (defface powerline-python-majmode-inactive
      '((t (:background "DodgerBlue1" :foreground "grey22" :bold nil :inherit mode-line-inactive)))
      "Powerline face for python major mode, inactive"
      :group 'powerline)  
    (setq mode-line-format
	  (powerline-layout-gongyi
	   powerline-python-majmode-active
	   powerline-python-majmode-inactive)))
  (add-hook 'python-mode-hook 'python-powerline)


  ;; R
  (defun R-powerline ()
    (defface powerline-R-majmode-active
      '((t (:background "green4" :foreground "grey85" :bold t :inherit mode-line)))
      "Powerline face for R major mode, active"
      :group 'powerline)
    (defface powerline-R-majmode-inactive
      '((t (:background "green1" :foreground "grey22" :bold nil :inherit mode-line-inactive)))
      "Powerline face for R major mode, inactive"
      :group 'powerline)  
    (setq mode-line-format
	  (powerline-layout-gongyi
	   powerline-R-majmode-active
	   powerline-R-majmode-inactive)))
  (add-hook 'R-mode-hook 'R-powerline)

   
  ;; close 
  )

(provide 'powerline-theme-gongyi)
