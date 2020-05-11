;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; refresh' after modifying this file!


;; These are used for a number of things, particularly for GPG configuration,
;; some email clients, file templates and snippets.
(setq user-full-name "Iwo Herka"
      user-mail-address "herkaiwo@gmail.com")

;; Doom exposes five (optional) variables for controlling fonts in Doom. Here
;; are the three important ones:
;;
;; + `doom-font'
;; + `doom-variable-pitch-font'
;; + `doom-big-font' -- used for `doom-big-font-mode'
;;
;; They all accept either a font-spec, font string ("Input Mono-12"), or xlfd
;; font string. You generally only need these two:
;; test
(setq doom-font (font-spec :family "Fira Code" :size 14)
      doom-variable-pitch-font (font-spec :family "Fira Code"))
(setq doom-themes-treemacs-enable-variable-pitch nil)

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. These are the defaults.
(setq doom-theme 'doom-solarized-light)

;; If you intend to use org, it is recommended you change this!
(setq org-directory "~/Notes/")

(setq doom-modeline-height 50)

(defun set-coq-pretty-symbols ()
  (setq-default prettify-symbols-alist
                '(("not" . 172)
                  ("/\\" . 8896)
                  ("\\/" . 8897)
                  ("forall" . 8704)
                  ("~" . 172)
                  ("exists" . 8707)
                  ("fun" . 955)
                  ("->" . 8594)
                  ("<->" . 8596)
                  ("<-" . 8592)
                  (":=" . 8801)
                  ("=>" . 8658)
                  ("::" . 8759))))

(setq-default prettify-symbols-alist
              '(("->" . 8594)
                ("<->" . 8596)
                ("<-" . 8592)
                (":=" . 8801)
                ("=>" . 8658)
                ("::" . 8759)))

(defun set-kotlin-pretty-symbols ()
  (setq-default prettify-symbols-alist
                '(("fun" . 955)
                  ("->" . 8594)
                  ("private" 8900)
                  ("override" 8706)
                  ("class" 958)
                  ("var" 9675)
                  ("val" 9679)
                  )))

(remove-hook 'ivy-mode-hook #'ivy-rich-mode)

(add-hook 'coq-mode-hook 'set-coq-pretty-symbols)
(add-hook 'kotlin-mode-hook 'set-kotlin-pretty-symbols)
;; `nil' to disable it:
(setq display-line-numbers-type `relative)

(setq evil-ex-substitute-global t)

(add-hook 'clojure-mode-hook #'enable-paredit-mode)
(add-hook 'after-change-major-mode-hook 'fci-mode)

;; -

(custom-set-faces
 '(aw-leading-char-face
   ((t (:inherit ace-jump-face-foreground :height 3.5)))))


;; Here are some additional functions/macros that could help you configure Doom:
;;
;; - `load!' for loading external *.el files relative to this on
;; - `use-package' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', where Emacs
;;   looks when you load packages with `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c g k').
;; This will open documentation for it, including demos of how they are used.
;;
;; You can also try 'gd' (or 'C-c g d') to jump to their definition and see how
;; they are implemented.
;;
