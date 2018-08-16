;;;general editor settings
;;line numbers

(when (version<= "26.0.50" emacs-version)
  (global-display-line-numbers-mode)
)
;;menu bar
(menu-bar-mode -1)
(toggle-scroll-bar -1)
(tool-bar-mode -1)
;;startup screen
(setq inhibit-splash-screen t)
;;tabs
(setq-default indent-tabs-mode nil)
;;
(when (fboundp 'windmove-default-keybindings)
  (windmove-default-keybindings))
;;open eshell
(defun eshell-other-window ()
  (interactive)
  (let ((buf (eshell)))
    (switch-to-buffer (other-buffer buf))
    (switch-to-buffer-other-window buf)
    )
  )
(defun kill-window-on-exit ()
  (delete-window)
)
(advice-add 'eshell-life-is-too-much :after 'kill-window-on-exit)
(global-set-key (kbd "C-t") 'eshell-other-window)
;;allow fast eval
(global-set-key (kbd "C-S-s") 'eval-buffer)

;;load under cursor
(require 'ffap)
(global-set-key (kbd "C-x M-f") 'find-file-at-point)
;;disable C-z
(global-unset-key (kbd "C-z") ) 
;;allow C-M-g to function as C-g
(global-set-key (kbd "C-M-g") 'keyboard-quit)
;; C-k deletes whole line
(global-set-key (kbd "C-k") 'kill-whole-line)
;;use y-or-n-p instead of yes-or-no-p
(defalias 'yes-or-no-p 'y-or-n-p)
;;backup directory
(setq backup-directory-alist '(("."."~/.emacs.d/backups/")))
;;open files
(global-unset-key (kbd "C-f") )
(global-set-key (kbd "C-f e i") (lambda()(interactive)(find-file "~/.emacs.d/init.el")))
(global-set-key (kbd "C-f e g") (lambda()(interactive)(find-file "~/.emacs.d/general.el")))
(global-set-key (kbd "C-f e o") (lambda()(interactive)(find-file "~/.emacs.d/org-mode.el")))
(global-set-key (kbd "C-f t") (lambda()(interactive)(find-file "~/org/todo.org")))
