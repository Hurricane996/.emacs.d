(global-set-key (kbd "C-x C-f") 'helm-find-files)
(use-package helm)
(global-set-key (kbd "M-x") 'helm-M-x)
(helm-mode 1)

(use-package projectile)
(use-package helm-projectile)
(projectile-global-mode)
(projectile-global-mode)
(setq projectile-completion-system 'helm)
(helm-projectile-on)
(define-key projectile-mode-map (kbd "C-x p") 'projectile-command-map)

(use-package org-bullets
  :config (add-hook 'org-mode-hook (lambda()(org-bullets-mode))))

(use-package rainbow-mode)
(define-globalized-minor-mode global-rainbow-mode rainbow-mode
  (lambda () (rainbow-mode 1)))
(global-rainbow-mode 1)

(use-package rainbow-delimiters)
(define-globalized-minor-mode global-rainbow-delimiters-mode rainbow-delimiters-mode
    (lambda () (rainbow-mode 1)))
  (global-rainbow-mode 1)

(use-package switch-window)
(setq switch-window-input-style 'minibuffer)
(setq switch-window-increase 4)
(setq switch-window-threshold 2)
(setq switch-window-shortcut-style 'qwerty)
(global-set-key (kbd "C-x o") 'switch-window)

(use-package sudo-edit)
(global-set-key (kbd "C-x M-f") 'sudo-edit)

(use-package alect-themes)
(load-theme 'alect-dark-alt t)
(use-package json)
(use-package magit)
(use-package erc)

(menu-bar-mode -1)
(toggle-scroll-bar -1)
(tool-bar-mode -1)
(setq inhibit-splash-screen t)

(when window-system (global-hl-line-mode t))
(when window-system (global-prettify-symbols-mode t))
(global-display-line-numbers-mode)

(setq make-backup-files nil)
(setq auto-save-default nil)
(setq create-lockfiles  nil)

(setq indent-tabs-mode nil)

(defalias 'yes-or-no-p 'y-or-n-p)

(global-set-key (kbd "C-x b") 'ibuffer)

(global-subword-mode 1)

(add-to-list 'org-structure-template-alist
               '("el" "#+BEGIN_SRC emacs-lisp\n?\n#+END_SRC"))

(setq org-src-window-setup 'current-window)

(global-set-key (kbd "C-S-s") 'eval-buffer)

(global-unset-key (kbd "C-z") )

(global-set-key (kbd "C-k") 'kill-whole-line)

(global-set-key (kbd "M-RET") 'ansi-term)

(defvar term-sh "/bin/bash")
(defadvice ansi-term (before force-bash)
  (interactive (list term-sh)))
(ad-activate 'ansi-term)

(setq inhibit-x-resources t)

(defun split-and-follow-horizontally ()
  (interactive)
  (split-window-below)
  (balance-windows)
  (other-window 1))
(global-set-key (kbd "C-x 2") 'split-and-follow-horizontally)

(defun split-and-follow-vertically ()
  (interactive)
  (split-window-right)
  (balance-windows)
  (other-window 1))
(global-set-key (kbd "C-x 3") 'split-and-follow-vertically)

(global-set-key (kbd "C-x c e")
                (lambda()(interactive)(find-file "~/.emacs.d/config.org")))
(global-set-key (kbd "C-x c r")
                (lambda()(interactive)
                  (when (get-buffer "config.org") (save-buffer "config.org"))
                  (org-babel-load-file (expand-file-name "~/.emacs.d/config.org"))))
