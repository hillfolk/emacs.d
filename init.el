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

(require 'ox-md)
(setq org-todo-keywords '((sequence "TODO(t)" "WAITING(w)" "|" "DONE(d)" "CANCELLED(c)")))

(require 'server)
(unless (server-running-p) (server-start))

