;;; config.el -*- lexical-binding: t; -*-
(setq user-full-name "Ivan Polennikov"
      user-mail-address "lerner1796@gmail.com")

(setq auto-save-default t
      make-backup-files t)

(setq confirm-kill-emacs nil)


(plist-put! +ligatures-extra-symbols
  ;; :and           nil
  ;; :or            nil
  :for           nil
  :not           nil
  :true          nil
  :false         nil
  :int           nil
  :float         nil
  :str           nil
  :bool          nil
  :list          nil
  :def           nil
  :import        nil
  :yield         nil
)

(add-to-list 'initial-frame-alist '(fullscreen . maximized))

(setq doom-font (font-spec :family "Fira Code" :size 13 :weight 'medium))


;; JAVA


(require 'gradle-mode)
(add-hook 'java-mode-hook '(lambda() (gradle-mode 1)))

 (require 'company)
  (global-company-mode t)

(require 'company-emacs-eclim)
  (company-emacs-eclim-setup)

(custom-set-faces
 ;; ...
 '(company-preview ((t (:background "black" :foreground "white"))))
 '(company-preview-common ((t (:foreground "red"))))
 '(company-preview-search ((t (:inherit company-preview))))
 '(company-scrollbar-bg ((t (:background "brightwhite"))))
 '(company-scrollbar-fg ((t (:background "red"))))
 '(company-template-field ((t (:background "magenta" :foreground "black"))))
 '(company-tooltip ((t (:background "brightwhite" :foreground "black"))))
 '(company-tooltip-annotation ((t (:background "brightwhite" :foreground "black"))))
 '(company-tooltip-annotation-selection ((t (:background "color-253"))))
 '(company-tooltip-common ((t (:background "brightwhite" :foreground "white"))))
 '(company-tooltip-common-selection ((t (:background "color-253" :foreground "red"))))
 '(company-tooltip-mouse ((t (:foreground "black"))))
 '(company-tooltip-search ((t (:background "brightwhite" :foreground "black"))))
 '(company-tooltip-selection ((t (:background "color-253" :foreground
 "black"))))
 ;; ...
)

