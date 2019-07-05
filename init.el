;;disable splash screen and startup message
(setq inhibit-startup-message t) 
(setq initial-scratch-message nil)

(require 'package)
(set-language-environment "Korean")
(prefer-coding-system 'utf-8)

;; High level aesthetic stuff
(tool-bar-mode -1)                  ; Disable the button bar atop screen
(scroll-bar-mode -1)                ; Disable scroll bar

(load-theme 'tango-dark)
(add-to-list 'package-archives '("gnu" . "https://elpa.gnu.org/packages/"))
(add-to-list 'package-archives '("org" . "https://orgmode.org/elpa/"))
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/"))

(package-initialize)
(package-refresh-contents)

(require 'neotree)

(global-set-key [f8] 'neotree-toggle)

(neotree-toggle)

(eyebrowse-mode t)

(require 'auto-complete)
(global-auto-complete-mode t)


(setq latex-run-command "pdflatex")

(setq multi-term-program "/bin/zsh")

(require 'org-tree-slide)

(require 'projectile)
(projectile-mode)
(setq projectile-completion-system 'default)

(defun my-switch-project-hook ()
  (go-set-project))
(add-hook 'projectile-after-switch-project-hook #'my-switch-project-hook)

(projectile-mode +1)
(define-key projectile-mode-map (kbd "s-p") 'projectile-command-map)
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)


(require 'ox-md)
(setq org-todo-keywords '((sequence "TODO(t)" "WAITING(w)" "|" "DONE(d)" "CANCELLED(c)")))

(with-eval-after-load 'ox
  (require 'ox-hugo))

(require 'use-package)

(use-package ox-hugo
  :ensure t            ;Auto-install the package from Melpa (optional)
  :after ox)

(require 'go-mode)


(require 'go-autocomplete)
(require 'auto-complete-config)
(ac-config-default)

(global-auto-complete-mode t)

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
