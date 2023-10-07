;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-
;; Basic Doom Emacs config.el

;; Lisp modes
(setq flycheck-check-syntax-automatically '(save mode-enabled)) 
(defun open-popup-on-side-or-below (buffer &optional alist)
  (+popup-display-buffer-stacked-side-window-fn
   buffer (append `((side . ,(if (one-window-p)
                                 'right
                               'bottom)))
                  alist)))

(after! scheme
  (set-popup-rule! "^\\*Geiser Debug" :actions '(open-popup-on-side-or-below)))
(add-hook 'text-mode-hook #'auto-fill-mode)

;; Misc
(setq doom-theme 'doom-one)
(setq display-line-numbers-type 'relative)

;; Start maximized
(add-to-list 'initial-frame-alist '(fullscreen . maximized))
(setq org-directory "~/org/")

;; Exit confirmation
(setq confirm-kill-emacs nil)
(setq
 split-width-threshold 0
 split-height-threshold nil
 )

;; For publishing org-mode pages to html
(setq org-publish-use-timestamps-flag nil)
(setq org-export-with-broken-links t)
(setq org-publish-project-alist
      '(("web"
         :base-directory "~/web"
         :base-extension "org"
         :publishing-directory "~/web/html"
         :recursive t
         :with-author nil
         :auto-sitemap t
         :sitemap-filename "sitemap.org"
         :sitemap-style tree
         :with-creator t
         :with-toc nil
         :section-numbers nil
         :publishing-function org-html-publish-to-html
         :headline-levels 4
         :auto-preamble t)))
