;; popwin is a popup window manager for Emacs
(require 'popwin)
(popwin-mode 1)

(setq initial-scratch-message "")
(setq inhibit-startup-message t)
(setq inhibit-startup-echo-area-message 'current-user)

;; Answering just 'y' or 'n' will do
(defalias 'yes-or-no-p 'y-or-n-p)

(blink-cursor-mode 0)

(tool-bar-mode 0)
(menu-bar-mode 0)
(scroll-bar-mode 0)

(setq scroll-margin 0
      scroll-conservatively 100000
      scroll-preserve-screen-position 1)

(line-number-mode t)
(line-number-mode t)
(column-number-mode t)
(global-linum-mode 1)

(global-visual-line-mode 1)

(global-hl-line-mode 1)

;; moe-theme config
(add-to-list 'custom-theme-load-path "~/.emacs.d/moe-theme.el/")
(add-to-list 'load-path "~/.emacs.d/moe-theme.el/")

;; Confirm that (require 'powerline) must before (require 'moe-theme).
;; Otherwise, powerline-moe-theme will not be initallized.
(require 'powerline)
(require 'moe-theme)

(powerline-default-theme)
(load-theme 'moe-dark t)

(setq moe-theme-mode-line-color 'purple)
(powerline-moe-theme)

(provide 'lunfardo-ui)
