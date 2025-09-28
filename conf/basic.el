;; -*- lexical-binding: t; -*-

;; Core settings
(setq
 inhibit-startup-message t

 ;; Improves the startup time
 package-enable-at-startup nil

 visible-bell t

 ;; Instruct auto-save-mode to save to the current file, not a backup file
 auto-save-default nil

 ;; No backup files, please
 make-backup-files nil
)

;; Core modes
(menu-bar-mode -1)             ;; Hide the menu bar
(tool-bar-mode -1)             ;; Hide the tool bar
(scroll-bar-mode -1)           ;; Hide the scroll bar
(set-fringe-mode 10)           ;; Fringe space
(electric-pair-mode t)         ;; Automatically close the brackets
(repeat-mode 1)                ;; Enable repeating key maps
(savehist-mode 1)              ;; Save minibuffer history
(xterm-mouse-mode 1)           ;; Enable mouse events in terminal Emacs
(display-time-mode 1)          ;; Display time in mode line / tab bar
(column-number-mode 1)         ;; Show column number on mode line
(tab-bar-history-mode 1)       ;; Remember previous tab window configurations
(auto-save-visited-mode 1)     ;; Auto-save files at an interval
(global-visual-line-mode 1)    ;; Visually wrap long lines in all buffers
(global-auto-revert-mode 1)    ;; Refresh buffers with changed local files

;; Tabs to spaces
(setq-default indent-tabs-mode nil
	            tab-width 2)

;; Display line numbers in programming modes
(add-hook 'prog-mode-hook #'display-line-numbers-mode)

;; Delete trailing whitespace before saving buffers
(add-hook 'before-save-hook 'delete-trailing-whitespace)

(provide 'basic)
