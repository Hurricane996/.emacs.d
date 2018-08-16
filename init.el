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

;;;neotree
(use-package neotree)
(neotree-toggle)
(global-set-key (kbd "C-f") 'neotree-toggle)
(setq neo-show-hidden-files t)
(windmove-right)
;;;dracula
(use-package dracula-theme)
;;;helm
(use-package helm)

(require 'helm)
(require 'helm-config)


(global-set-key (kbd "C-x C-f") 'helm-find-files)
(global-set-key (kbd "M-x") 'helm-M-x)
(helm-mode 1)
;;org-journal
(use-package org-journal)
(require 'org-journal)
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
    (org-journal projectile helm tabbar dracula-theme use-package neotree))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
