;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;;; Code:

(setq user-full-name "Siddhant Kumar"
      user-mail-address "siddhantk232@gmail.com")

(setq doom-font (font-spec :family "Fira Code" :size 16 :weight 'semi-light)
      doom-variable-pitch-font (font-spec :family "Fira Sans" :size 14))

(setq doom-theme 'doom-gruvbox
      display-line-numbers-type 'relative)

;; transparency
(set-frame-parameter (selected-frame) 'alpha '(96 96))

(setq org-directory "~/vimwiki/")

;; projectile project search path
(setq projectile-project-search-path '(("~/projects/" . 3)))

;; C-c for NORMAL
(define-key evil-insert-state-map (kbd "C-c") 'evil-normal-state)
(define-key evil-normal-state-map (kbd "C-p") 'projectile-find-file)

(add-to-list 'auto-mode-alist '("\\.MD\\'" . markdown-mode))

(use-package! org-roam
  :ensure t
  :custom
  (org-roam-directory "~/vimwiki/roam")
  :config
  (org-roam-setup))
