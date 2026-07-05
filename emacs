'(LaTeX-beamer-section-labels-flag t)
 '(LaTeX-command "lualatex")
  '(LaTeX-default-author "Dr Philippe MICHEL")
  '(LaTeX-default-format "scrartcl")
  '(LaTeX-default-options '("a4paper" "10pt" "french"))
  '(LaTeX-default-style "scrartcl")
  '(LaTeX-electric-left-right-brace t)
  '(LaTeX-figure-label "fig")
  '(LaTeX-float "ht")
  '(LaTeX-style-list
    '(("article")
      ("beamer")
      ("book")
      ("minimal")
      ("report")
      ("scrartcl")
      ("scrbook")
      ("scrlttr2")
      ("scrreprt")
      ("stat")))
'(TeX-PDF-mode t)
'(TeX-clean-confirm nil)
(setq TeX-save-query nil)
;;
'(current-language-environment "UTF-8")
'(custom-safe-themes
'("3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" "d91ef4e714f05fff2070da7ca452980999f5361209e679ee988e3c432df24347" default))
'(display-time-mode t)
;;
;; Divers pour Auctex, les parenthèses...
(electric-pair-mode t)
(electric-indent-mode +1)
(add-hook 'LaTeX-mode-hook'reftex-mode)
(setq reftex-plug-into-AUCTeX t)
(setq reftex-use-multiple-selection-buffers t)
(require 'tex-site)
(reftex-mode t)
(add-hook 'LaTeX-mode-hook 'outline-minor-mode)
'(inhibit-startup-screen t)
(setq-default abbrev-mode t)
(read-abbrev-file "~/.emacs.d/abbrev_defs")
(setq save-abbrevs t)

(fset 'yes-or-no-p 'y-or-n-p)
(setq ispell-dictionary "francais")
;;
;; ESS
  '(electric-indent-mode t)
  '(ess-funcmenu-use-p t)
  '(ess-language "R" t)
  '(ess-pdf-viewer-pref '("okular"))
  '(ess-swv-processor 'knitr)
  '(ess-toolbar-global t)
  '(ess-toolbar-own-icons t)
  '(eudc-protocol 'ldap)
  '(eudc-server nil)
  '(eudc-strict-return-matches t)
  '(font-use-system-font t)
  '(holiday-local-holidays 'france)
'(indicate-buffer-boundaries 'left)
;;
(use-package ess
  :init
  (setq ess-style 'RStudio)
  :mode
  (("\\.[rR]" . ess-r-mode)
   ;; If you also use julia or some other language
   ("\\.[jJ][lL]" . ess-julia-mode))
  ;; Add my personal key-map
  :config
  ;; ESS process (print all)
  (setq ess-eval-visibly-p t)
  ;; Silence asking for aprenth directory
  (setq ess-ask-for-ess-directory nil)
  ;; Syntax highlights
  (setq ess-R-font-lock-keywords
	'((ess-R-fl-keyword:keywords . t)
	  (ess-R-fl-keyword:constants . t)
	  (ess-R-fl-keyword:modifiers . t)
	  (ess-R-fl-keyword:fun-defs . t)
	  (ess-R-fl-keyword:assign-ops . t)
	  (ess-R-fl-keyword:%op% . t)
	  (ess-fl-keyword:fun-calls . t)
	  (ess-fl-keyword:numbers . t)
	  (ess-fl-keyword:operators)
	  (ess-fl-keyword:delimiters)
	  (ess-fl-keyword:=)
	  (ess-R-fl-keyword:F&T . t))))

;;
;;  melpa
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)

(require 'poly-R)
(require 'poly-markdown)
(require 'quarto-mode)
;;
;; Fichiers récents
(require 'recentf)
(recentf-mode 1)
(global-set-key "\C-x\C-r" 'recentf-open-files-compl)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(LaTeX-command "lualatex")
 '(TeX-PDF-mode nil)
 '(TeX-clean-confirm nil)
 '(TeX-save-query nil)
 '(TeX-show-compilation t)
 '(TeX-source-correlate-mode t)
 '(TeX-view-program-selection
   '(((output-dvi style-pstricks) "dvips and gv") (output-dvi "Okular")
     (output-pdf "Okular") (output-html "Okular")))
 '(custom-enabled-themes nil)
 '(custom-safe-themes
   '("0c5204945ca5cdf119390fe7f0b375e8d921e92076b416f6615bbe1bd5d80c88"
     "adaf421037f4ae6725aa9f5654a2ed49e2cd2765f71e19a7d26a454491b486eb"
     "251ed7ecd97af314cd77b07359a09da12dcd97be35e3ab761d4a92d8d8cf9a71"
     "be84a2e5c70f991051d4aaf0f049fa11c172e5d784727e0b525565bb1533ec78"
     "2721b06afaf1769ef63f942bf3e977f208f517b187f2526f0e57c1bd4a000350"
     "991ca4dbb23cab4f45c1463c187ac80de9e6a718edc8640003892a2523cb6259"
     "fc1137ae841a32f8be689e0cfa07c872df252d48426a47f70dba65f5b0f88ac4"
     "aad7fd3672aad03901bf91e338cd530b87efc2162697a6bef79d7f8281fd97e3"
     "57d7e8b7b7e0a22dc07357f0c30d18b33ffcbb7bcd9013ab2c9f70748cfa4838"
     "6e03b7f86fcca5ce4e63cda5cd0da592973e30b5c5edf198eddf51db7a12b832"
     "77515a438dc348e9d32310c070bfdddc5605efc83671a159b223e89044e4c4f1"
     default))
 '(desktop-save-mode t)
 '(package-selected-packages
   '(all-the-icons-completion all-the-icons-dired all-the-icons-ivy-rich
			      apache-mode auto-complete badwolf-theme
			      bar-cursor bm boxquote browse-kill-ring
			      centaur-tabs color-theme-modern
			      company-auctex counsel csv-mode
			      dashboard diminish doom-themes eproject
			      ess flycheck-grammalecte folding
			      graphviz-dot-mode htmlize initsplit khoj
			      lsp-treemacs magit-popup minimap
			      mutt-alias muttrc-mode neotree
			      org-contrib org-drill org-roam
			      package-lint-flymake pdf-tools php-mode
			      pod-mode poly-R poly-org project
			      quarto-mode session smex svg-lib tabbar
			      treemacs-evil treemacs-icons-dired
			      treemacs-magit treemacs-persp
			      treemacs-projectile treemacs-tab-bar
			      verbiste vertico vertigo which-key yaml
			      yaml-mode))
 '(save-place-mode t)
 '(warning-suppress-types '((comp))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)


(setq use-short-answers t)
;;
(use-package which-key
  :config
  (which-key-mode))

(use-package all-the-icons
  :if (display-graphic-p))

;; Par défaut, on coupe la ligne à 80 caractères
(setq fill-column 80)


;; Configuration de Treemacs
(use-package treemacs
  :ensure t
  :defer t
  :init
  (with-eval-after-load 'winum
    (define-key winum-keymap (kbd "M-0") #'treemacs-select-window))
  :config
  (progn
    (setq treemacs-collapse-dirs                   (if treemacs-python-executable 3 0)
          treemacs-deferred-git-apply-delay        0.5
          treemacs-directory-name-transformer      #'identity
          treemacs-display-in-side-window          t
          treemacs-eldoc-display                   'simple
          treemacs-file-event-delay                2000
          treemacs-file-extension-regex            treemacs-last-period-regex-value
          treemacs-file-follow-delay               0.2
          treemacs-file-name-transformer           #'identity
          treemacs-follow-after-init               t
          treemacs-expand-after-init               t
          treemacs-find-workspace-method           'find-for-file-or-pick-first
          treemacs-git-command-pipe                ""
          treemacs-goto-tag-strategy               'refetch-index
          treemacs-header-scroll-indicators        '(nil . "^^^^^^")
          treemacs-hide-dot-git-directory          t
          treemacs-indentation                     2
          treemacs-indentation-string              " "
          treemacs-is-never-other-window           nil
          treemacs-max-git-entries                 5000
          treemacs-missing-project-action          'ask
          treemacs-move-files-by-mouse-dragging    t
          treemacs-move-forward-on-expand          nil
          treemacs-no-png-images                   nil
          treemacs-no-delete-other-windows         t
          treemacs-project-follow-cleanup          nil
          treemacs-persist-file                    (expand-file-name ".cache/treemacs-persist" user-emacs-directory)
          treemacs-position                        'left
          treemacs-read-string-input               'from-child-frame
          treemacs-recenter-distance               0.1
          treemacs-recenter-after-file-follow      nil
          treemacs-recenter-after-tag-follow       nil
          treemacs-recenter-after-project-jump     'always
          treemacs-recenter-after-project-expand   'on-distance
          treemacs-litter-directories              '("/node_modules" "/.venv" "/.cask")
          treemacs-project-follow-into-home        nil
          treemacs-show-cursor                     nil
          treemacs-show-hidden-files               nil
          treemacs-silent-filewatch                nil
          treemacs-silent-refresh                  nil
          treemacs-sorting                         'alphabetic-asc
          treemacs-select-when-already-in-treemacs 'move-back
          treemacs-space-between-root-nodes        t
          treemacs-tag-follow-cleanup              t
          treemacs-tag-follow-delay                1.5
          treemacs-text-scale                      nil
          treemacs-user-mode-line-format           nil
          treemacs-user-header-line-format         nil
          treemacs-wide-toggle-width               70
          treemacs-width                           30
          treemacs-width-increment                 1
          treemacs-width-is-initially-locked       t
          treemacs-workspace-switch-cleanup        nil)
 ;;   (treemacs-follow-mode t)
    (treemacs-filewatch-mode t)
    (treemacs-fringe-indicator-mode 'always)
    (when treemacs-python-executable
      (treemacs-git-commit-diff-mode t))
    ))


(treemacs-start-on-boot)

(require 'company-auctex)
(add-hook 'after-init-hook 'global-company-mode)
    (add-to-list 'load-path "path/to/company-auctex.el")
(require 'company-auctex)
