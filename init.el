;; -*- lexical-binding: t; -*-

(add-to-list 'load-path (expand-file-name "conf" user-emacs-directory))

(require 'basic) ;; Basic configurations, core settings
(require 'pax)   ;; Package loading (^use-package^)
(require 'kbind) ;; Customized keybindings
