;;; this is supposed to make emacs faster idk
(setq gc-cons-threshold 100000000)
(let ((file-name-handler-alist nil))
;;; use-package
(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/"))
(package-initialize)
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package)
)
(setq use-package-always-ensure t)
(eval-when-compile
  (require 'use-package)
)

(use-package dracula-theme)
(use-package helm)
(use-package org-journal)
(use-package json)
(use-package projectile)
(use-package helm-projectile)
(use-package magit)

;;;helm
(global-set-key (kbd "M-x") 'helm-M-x)
(helm-mode 1)
;;;projectile
(projectile-global-mode)
(setq projectile-completion-system 'helm)
(helm-projectile-on)
(define-key projectile-mode-map (kbd "C-x p") 'projectile-command-map)
(global-set-key (kbd "C-x C-f") 'helm-find-files)
;;;loading other config files
(load "~/.emacs.d/general.el")
(load "~/.emacs.d/org-mode.el")







;;;auto-generated
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(initial-frame-alist (quote ((fullscreen . maximized))))
 '(package-selected-packages (quote (helm tabbar dracula-theme use-package neotree))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(initial-frame-alist (quote ((fullscreen . maximized))))
 '(package-selected-packages
   (quote
    (magit helm-projectile buffer-move org-journal projectile helm tabbar dracula-theme use-package neotree))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
