;;disable splash screen and startup message
(setq inhibit-startup-message t) 
(setq initial-scratch-message nil)

(require 'package)

(load-theme 'tango-dark)

(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/"))

(package-initialize)
(package-refresh-contents)

(add-to-list 'load-path "/home/hillfolk/.emacs.d/packages/neotree")

(require 'neotree)

(global-set-key [f8] 'neotree-toggle)

(neotree-toggle)

(eyebrowse-mode t)

(setq multi-term-program "/bin/zsh")

(require 'projectile)
(projectile-mode)
(setq projectile-completion-system 'default)

(defun my-switch-project-hook ()
  (go-set-project))
(add-hook 'projectile-after-switch-project-hook #'my-switch-project-hook)

(require 'ox-md)
(setq org-todo-keywords '((sequence "TODO(t)" "WAITING(w)" "|" "DONE(d)" "CANCELLED(c)")))

(require 'server)
(unless (server-running-p) (server-start))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (go-autocomplete auto-complete exec-path-from-shell gorepl-mode which-key wgrep org-kanban neotree multi-term magit go-mode flycheck eyebrowse elpy counsel-projectile)))
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
