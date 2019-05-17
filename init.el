;;disable splash screen and startup message
(setq inhibit-startup-message t) 
(setq initial-scratch-message nil)

(require 'package)
(set-language-environment "Korean")
(prefer-coding-system 'utf-8)

(load-theme 'tango-dark)

(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/"))
(require 'package)
(add-to-list 'package-archives '("org" . "https://orgmode.org/elpa/"))

(package-initialize)
(package-refresh-contents)

(require 'neotree)

(global-set-key [f8] 'neotree-toggle)

(neotree-toggle)

(eyebrowse-mode t)

(setq latex-run-command "pdflatex")

(setq multi-term-program "/bin/zsh")

(require 'org-tree-slide)

(require 'projectile)
(projectile-mode)
(setq projectile-completion-system 'default)

(defun my-switch-project-hook ()
  (go-set-project))
(add-hook 'projectile-after-switch-project-hook #'my-switch-project-hook)

(require 'ox-md)
(setq org-todo-keywords '((sequence "TODO(t)" "WAITING(w)" "|" "DONE(d)" "CANCELLED(c)")))

(with-eval-after-load 'ox
  (require 'ox-hugo))

(use-package ox-hugo
  :ensure t            ;Auto-install the package from Melpa (optional)
  :after ox)

(require 'server)
(unless (server-running-p) (server-start))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (misterioso)))
 '(package-selected-packages
   (quote
    (## go-autocomplete auto-complete exec-path-from-shell gorepl-mode which-key wgrep org-kanban neotree multi-term magit go-mode flycheck eyebrowse elpy counsel-projectile)))
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
