;; -*- lexical-binding: t; -*-

;; Testing
(set-face-attribute 'default nil :family "Hack" :height 100)

;; Initialize package sources
(require 'package)

(setq package-archives '(("melpa" . "https://melpa.org/packages/")
                         ("org" . "https://orgmode.org/elpa/")
                         ("elpa" . "https://elpa.gnu.org/packages/")))

(package-initialize)
(unless package-archive-contents
 (package-refresh-contents))

;; Initialize use-package on non-Linux platforms
(unless (package-installed-p 'use-package)
   (package-install 'use-package))

;; Almost Mono Themes
(use-package almost-mono-themes
  :config
  ;; (load-theme 'almost-mono-black t)
  ;; (load-theme 'almost-mono-gray t)
  ;; (load-theme 'almost-mono-cream t)
  (load-theme 'almost-mono-white t))

;; Heaven & Hell Toggle Dark & Light Theme
(setq use-package-always-ensure t)

(use-package heaven-and-hell
  :ensure t
  :config
  ;; (setq heaven-and-hell-theme-type 'dark) ;; Omit to use light by default
  ;; (setq heaven-and-hell-themes
  ;;       '((light . dichromacy)
  ;;         (dark . manoj-dark))) ;; Themes can be the list: (dark . (tsdh-dark wombat))
  (setq heaven-and-hell-themes
        '((light . almost-mono-white)
          (dark . almost-mono-black))) ;; Themes can be the list: (dark . (tsdh-dark wombat))
  ;; Optionall, load themes without asking for confirmation.
  (setq heaven-and-hell-load-theme-no-confirm t)
  :hook (after-init . heaven-and-hell-init-hook)
  :bind (("C-c <f6>" . heaven-and-hell-load-default-theme)
         ("<f6>" . heaven-and-hell-toggle-theme)))

;; Evil for Vi-like keybindings
(use-package evil
  :init
  (setq evil-want-integration t)
  (setq evil-want-keybinding nil)
  (setq evil-want-C-u-scroll t)
  (setq evil-want-C-i-jump nil)
  :config
  (evil-mode 1)
  (define-key evil-insert-state-map (kbd "C-g") 'evil-normal-state)
  (define-key evil-insert-state-map (kbd "C-h") 'evil-delete-backward-char-and-join)

;; Use visual line motions even outside of visual-line-mode buffers
(evil-global-set-key 'motion "j" 'evil-next-visual-line)
(evil-global-set-key 'motion "k" 'evil-previous-visual-line)

(evil-set-initial-state 'messages-buffer-mode 'normal)
(evil-set-initial-state 'dashboard-mode 'normal))

(evil-set-undo-system 'undo-redo)

(provide 'pax)
