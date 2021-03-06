;;
;; Emacs Load Path
(progn (cd "~/.emacs.d") (normal-top-level-add-subdirs-to-load-path))

(setq load-path (cons "~/.emacs.d" load-path))
(setq load-path (cons "/usr/share/emacs/site-lisp/org_contrib/lisp" load-path))

;;Backup Files Setting
(setq make-backup-files nil) 

;; Load worklog.el, my favorite!
(load "worklog")
(load "gist")

(add-to-list 'auto-mode-alist '("\\.lsp\\'" . newlisp-mode))
(autoload 'newlisp-mode "newlisp" "Turn on NewLisp mode" t)
(turn-on-font-lock)

(autoload 'python-mode "python-mode.el" "Python mode." t)
	  (setq auto-mode-alist (append '(("/*.\.py$" . python-mode)) auto-mode-alist))

;(setq ipython-command "/usr/bin/ipython")
;      (require 'ipython) 

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
;; Adds a time/date stamp to completed todo items
(setq org-log-done t)
;; Custom todo states
(setq org-todo-keywords '("TODO" "WAITING" "DONE")
           org-todo-interpretation 'sequence)
(require 'org-habit)

(autoload 'longlines-mode "longlines.el" "Minor mode for editing long lines." t)
(add-hook 'markdown-mode-hook 'longlines-mode) ;; This only uses longlines during markdown-mode.
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(org-agenda-files (quote ("~/personal/Dropbox/notes/2010-jkern-journal.org"))))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )
