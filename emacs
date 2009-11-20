;;
;; Emacs Load Path
(progn (cd "~/.emacs.d") (normal-top-level-add-subdirs-to-load-path))
(setq load-path (cons "~/.emacs.d" load-path))

;;Backup Files Setting
(setq make-backup-files nil) 

;; Load worklog.el, my favorite!
(load "worklog")

;; Auto-load markdown-mode for *.text files
(autoload 'markdown-mode "markdown-mode.el"
   "Major mode for editing Markdown files" t)
(setq auto-mode-alist
   (cons '("\\.text" . markdown-mode) auto-mode-alist))

(autoload 'go-mode "go-mode.el"
  "Major mode for go" t)
(setq auto-mode-alist
      (cons '("\\.go" . go-mode) auto-mode-alist))

;; The following lines are always needed.  Choose your own keys.
(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)

(autoload 'longlines-mode "longlines.el" "Minor mode for editing long lines." t)
(add-hook 'markdown-mode-hook 'longlines-mode) ;; This only uses longlines during markdown-mode.
