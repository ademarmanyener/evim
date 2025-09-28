;; -*- lexical-binding: t; -*-

;; Make ESC quit prompts
(global-set-key (kbd "<escape>") 'keyboard-escape-quit)

;; Shortcut to edit init.el
(global-set-key [f7] (lambda () (interactive) (find-file user-init-file)))

;; Resizing  the windows
(global-set-key (kbd "S-C-h") 'shrink-window-horizontally)
(global-set-key (kbd "S-C-l") 'enlarge-window-horizontally)
(global-set-key (kbd "S-C-k") 'shrink-window)
(global-set-key (kbd "S-C-j") 'enlarge-window)

(provide 'kbind)
