;; ---------------------------------------------------------------------
;; Starter kit
;; ---------------------------------------------------------------------

;; package repositories
(setq package-archives
      '(("gnu"         . "http://elpa.gnu.org/packages/")
        ("org"         . "http://orgmode.org/elpa/")
        ("melpa"       . "http://melpa.milkbox.net/packages/")))
       ;("marmalade"   . "http://marmalade-repo.org/packages/")))
       ;https://github.com/nicferrier/elmarmalade/issues/55
(package-initialize)

;; load ubiquitos packages
;; (require 'cl)
;; (require 'cl-lib)
;; (require 'saveplace)
;; (require 'ffap)
;; (require 'uniquify)
;; (require 'ansi-color)
;; (require 'recentf)

;; misc
(set-language-environment "utf-8")
(setq inhibit-startup-screen t)
;; (auto-compression-mode t)
;; (show-paren-mode 1)
;; (setq-default truncate-lines nil)
;; (setq org-startup-truncated nil)

;; ---------------------------------------------------------------------
;; Text mode
;; ---------------------------------------------------------------------

;; default text mode
;; (setq-default major-mode 'text-mode)
;; (add-hook 'text-mode-hook 'auto-fill-mode)

;; ---------------------------------------------------------------------
;; LaTex mode
;; ---------------------------------------------------------------------

;; AUCTex
(setq TeX-auto-save t)
(setq TeX-parse-self t)
(setq-default TeX-master nil)
;; (add-hook 'LaTeX-mode-hook 'TeX-PDF-mode)
;; (setq bibtex-dialect "BibTeX")

;; Reftex
(require 'tex-site)
(autoload 'reftex-mode "reftex" "RefTeX Minor Mode" t)
(autoload 'turn-on-reftex "reftex" "RefTeX Minor Mode" nil)
(autoload 'reftex-citation "reftex-cite" "Make citation" nil)
(autoload 'reftex-index-phrase-mode "reftex-index" "Phrase Mode" t)
(add-hook 'latex-mode-hook 'turn-on-reftex)
;; (add-hook 'reftex-load-hook 'imenu-add-menubar-index)
(add-hook 'LaTeX-mode-hook 'turn-on-reftex)

;; ---------------------------------------------------------------------
;; Org mode
;; ---------------------------------------------------------------------

;; global binding
;; (define-key global-map "\C-ca" 'org-agenda)
;; (define-key global-map "\C-cl" 'org-store-link)

;; active Babel languages
;; http://orgmode.org/worg/org-contrib/babel/languages.html
;; (org-babel-do-load-languages
;;  'org-babel-load-languages
;;  '((emacs-lisp . t)
;;    (org . t)
;;    (python . t)
;;    (R . t)
;;    (sql . t)
;;    (sqlite)))

;; (setq org-confirm-babel-evaluate nil)

;; (setq org-src-fontify-natively t)
;; (setq org-src-tab-acts-natively t)

;; system-wide Babel header arguments
;; (setq org-babel-default-header-args
;;       (cons '(:noweb . "yes")
;;  	    (assq-delete-all :noweb org-babel-default-header-args)))

;; ---------------------------------------------------------------------
;; Polymode
;; ---------------------------------------------------------------------

;; (require 'poly-R)
;; (require 'poly-markdown)

;; ;; polymode + markdown
;; (add-to-list 'auto-mode-alist '("\\.md" . poly-markdown-mode))

;; ;; polymode + R
;; (add-to-list 'auto-mode-alist '("\\.Snw" . poly-noweb+r-mode))
;; (add-to-list 'auto-mode-alist '("\\.Rnw" . poly-noweb+r-mode))
;; (add-to-list 'auto-mode-alist '("\\.Rmd" . poly-markdown+r-mode))
