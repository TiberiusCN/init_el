;;; theme settings

(add-hook 'window-setup-hook 'on-after-init)

(display-time-mode 1)

(require 'package)
(setq package-archives '(
                         ("gnu" . "https://elpa.gnu.org/packages/")
                         ("melpa" . "https://melpa.org/packages/")))
(package-initialize)

;;; packages installation
;(package-refresh-contents)
(unless (package-installed-p 'linum-relative) (package-install 'linum-relative))
(unless (package-installed-p 'evil) (package-install 'evil))
(unless (package-installed-p 'lsp-mode) (package-install 'lsp-mode))
(unless (package-installed-p 'flycheck) (package-install 'flycheck))
(unless (package-installed-p 'flycheck-rust) (package-install 'flycheck-rust))
(unless (package-installed-p 'company-lsp) (package-install 'company-lsp))
(unless (package-installed-p 'company-box) (package-install 'company-box))
(unless (package-installed-p 'lsp-treemacs) (package-install 'lsp-treemacs))
(unless (package-installed-p 'dap-mode) (package-install 'dap-mode))
(unless (package-installed-p 'yasnippet) (package-install 'yasnippet))
(unless (package-installed-p 'lsp-ui) (package-install 'lsp-ui))
(unless (package-installed-p 'helm-lsp) (package-install 'helm-lsp))
(unless (package-installed-p 'treemacs-evil) (package-install 'treemacs-evil))
(unless (package-installed-p 'molokai-theme) (package-install 'molokai-theme))
(unless (package-installed-p 'xclip) (package-install 'xclip))
(unless (package-installed-p 'evil-easymotion) (package-install 'evil-easymotion))
(unless (package-installed-p 'magit) (package-install 'magit))
(unless (package-installed-p 'evilmagit) (package-install 'evil-magit))
(unless (package-installed-p 'treemacs-projectile) (package-install 'treemacs-projectile))
(unless (package-installed-p 'helm-projectile) (package-install 'helm-projectile))
(unless (package-installed-p 'russian-holidays) (package-install 'russian-holidays))
(unless (package-installed-p 'pkgbuild-mode) (package-install 'pkgbuild-mode))
(unless (package-installed-p 'realgud) (package-install 'realgud))
(unless (package-installed-p 'realgud-lldb) (package-install 'realgud-lldb))
(unless (package-installed-p 'evil-collection) (package-install 'evil-collection))
(unless (package-installed-p 'json-mode) (package-install 'json-mode))
(unless (package-installed-p 'rainbow-delimiters) (package-install 'rainbow-delimiters))
(unless (package-installed-p 'origami) (package-install 'origami))
(unless (package-installed-p 'lua-mode) (package-install 'lua-mode))
(unless (package-installed-p 'company-statistics) (package-install 'company-statistics))
(unless (package-installed-p 'rust-mode) (package-install 'rust-mode))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(c-basic-offset 2)
 '(custom-safe-themes
   '("11e57648ab04915568e558b77541d0e94e69d09c9c54c06075938b6abc0189d8" "4c8372c68b3eab14516b6ab8233de2f9e0ecac01aaa859e547f902d27310c0c3" "e26e879d250140e0d4c4d5ab457c32bcb29742599bd28c1ce31301344c6f2a11" "b6f06081b007b57be61b82fb53f27315e2cf38fa690be50d6d63d2b62a408636" "9a3c51c59edfefd53e5de64c9da248c24b628d4e78cc808611abd15b3e58858f" "595099e6f4a036d71de7e1512656e9375dd72cf60ff69a5f6d14f0171f1de9c1" default))
 '(evil-shift-width 2)
 '(evil-undo-system 'undo-redo)
 '(lsp-modeline-code-actions-segments '(count))
 '(lsp-rust-clippy-preference "on")
 '(lsp-rust-wait-to-build 500.0)
 '(mode-line-format
   '("%e" ">"
     (:eval
      (timeclock-workday-elapsed-string))
     "< " mode-line-misc-info mode-line-client mode-line-remote mode-line-buffer-identification mode-line-position evil-mode-line-tag))
 '(opascal-indent-level 2)
 '(package-selected-packages
   '(company-statistics lua-mode company-glsl glsl-mode origami auto-complete rainbow-delimiters json-mode magit xclip molokai-theme dap-mode ## treemacs-evil linum-relative color-theme-modern rustic flycheck-rust rust-mode helm-lsp lsp-treemacs company-lsp flycheck lsp-ui lsp-mode evil))
 '(realgud-safe-mode nil)
 '(tab-width 2))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(font-lock-comment-delimiter-face ((t (:foreground "color-20" :slant italic))))
 '(font-lock-comment-face ((t (:foreground "color-20" :slant italic))))
 '(rainbow-delimiters-base-error-face ((t (:inherit rainbow-delimiters-base-face :background "red" :foreground "brightyellow"))))
 '(rainbow-delimiters-depth-1-face ((t (:inherit outline-1 :foreground "brightred"))))
 '(rainbow-delimiters-depth-4-face ((t (:inherit outline-4 :foreground "brightmagenta"))))
 '(rainbow-delimiters-depth-5-face ((t (:inherit outline-5 :foreground "brightgreen")))))

(load-theme 'molokai t)

;;; packages settings
(setq evil-want-keybinding nil)


(require 'linum-relative)
(linum-relative-global-mode 1)
(setq linum-relative-current-symbol "")

(require 'evil)
(evil-mode 1)

(require 'dap-mode)
(require 'dap-lldb)
(require 'lsp-mode)
(require 'flycheck)
(require 'flycheck-rust)
(require 'company-lsp)
(require 'lsp-treemacs)
;(require 'lsp-clients)
(require 'company-box)
(require 'lsp-ui)
(require 'helm-lsp)
(require 'treemacs)
(require 'treemacs-evil)
(require 'treemacs-projectile)
(require 'helm-projectile)
(projectile-mode 1)
(setq projectile-completion-system 'helm)
(helm-projectile-on)
(add-hook 'after-init-hook #'global-flycheck-mode)
(setq rust-indent-unit 2)
(setq rust-indent-offset 2)
(setq c-indent-unit 2)
(setq c-indent-offset 2)
(setq c++-indent-unit 2)
(setq c++-indent-offset 2)
(setq evil-shift-width 2)
;; (use-package dap-LANGUAGE) to load the dap adapter for your language
(add-hook 'rust-mode-hook #'lsp-deferred)
(add-hook 'c++-mode-hook #'lsp-deferred)
(add-hook 'flycheck-mode-hook #'flycheck-rust-setup)
(add-hook 'latex-mode-hook #'lsp-deferred)

(require 'xclip)
(xclip-mode 1)

(require 'evil-easymotion)

(require 'magit)
(require 'evil-magit)

(require 'russian-holidays)
(setq calendar-holidays russian-holidays)

;;; bindings
(define-key evil-normal-state-map (kbd "C-j") nil)
(global-set-key (kbd "C-j") nil)
(define-key evil-normal-state-map (kbd "C-j j") 'flycheck-next-error)
(define-key evil-normal-state-map (kbd "C-j f") 'flycheck-previous-error)
(define-key evil-normal-state-map (kbd "C-j d") 'lsp-find-definition)
(define-key evil-normal-state-map (kbd "C-j e") 'lsp-find-declaration)
(define-key evil-normal-state-map (kbd "C-j i") 'lsp-find-implementation)
(define-key evil-normal-state-map (kbd "C-j r") 'lsp-find-references)
(define-key evil-normal-state-map (kbd "SPC SPC") 'treemacs)
(define-key company-active-map (kbd "C-n") 'company-select-next-or-abort)
(define-key company-active-map (kbd "C-p") 'company-select-previous-or-abort)
(evilem-default-keybindings "SPC")
(define-key treemacs-mode-map (kbd "SPC SPC") '(lambda () (interactive) (
                                                            ;treemacs-copy-path-at-point
                                                            shell-command (car kill-ring))))
(define-key evil-normal-state-map (kbd "M-p") 'projectile-switch-project)

;;; indentation
(progn (setq-default indent-tabs-mode nil)) ; tabs are spaces
(setq-default tab-width 2)
(setq tab-width 2)
(add-hook 'rust-mode-hook (function (lambda () (setq evil-shift-width 2))))

;;; vanilla settings
(show-paren-mode 1)
(menu-bar-mode 0)

;; colorized shell
(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)

;; colorized shell-command
(require 'ansi-color)
(defadvice display-message-or-buffer (before ansi-color activate)
  "Process ANSI color codes in shell output."
  (let ((buf (ad-get-arg 0)))
    (and (bufferp buf)
         (string= (buffer-name buf) "*Shell Command Output*")
         (with-current-buffer buf
           (ansi-color-apply-on-region (point-min) (point-max))))))

(require 'pkgbuild-mode)
(autoload 'pkgbuild-mode "pkgbuild-mode.el" "PKGBUILD mode." t)
(setq auto-mode-alist (append '(("/PKGBUILD$" . pkgbuild-mode)) auto-mode-alist))

(require 'origami)
(add-hook 'prog-mode-hook 'origami-mode)
(add-hook 'text-mode-hook 'origami-mode)
(define-key evil-normal-state-map (kbd "z f") 'origami-toggle-node)

(require 'realgud)
(require 'realgud-lldb)

(require 'evil-collection)
(setq evil-collection-company-use-tng nil)
(evil-collection-init)

;(require 'vimish-fold)
;(require 'evil-vimish-fold)
;(add-hook 'prog-mode-hook 'evil-vimish-fold-mode)
;(add-hook 'text-mode-hook 'evil-vimish-fold-mode)

(require 'rainbow-delimiters)
(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)

(require 'yasnippet)
(add-hook 'prog-mode-hook 'yas-minor-mode)

;; syntax table
;(modify-syntax-entry ?< " " )
;(modify-syntax-entry ?> " " )

;; set colors
(set-face-attribute 'lsp-ui-doc-background nil :background "unspecified")
(set-face-attribute 'magit-section-highlight nil :background "unspecified")
(set-face-attribute 'magit-diff-context-highlight nil :background "unspecified")
(set-face-attribute 'magit-diff-context-highlight nil :foreground "brighwite")
(set-face-attribute 'magit-diff-hunk-heading-highlight nil :background "color-234")
(set-face-attribute 'magit-diff-hunk-heading-highlight nil :foreground "color-201")
(set-face-attribute 'magit-diff-hunk-heading nil :background "color-234")
(set-face-attribute 'magit-diff-hunk-heading nil :foreground "color-88")
(set-face-attribute 'magit-diff-removed-highlight nil :background "unspecified")
(set-face-attribute 'magit-diff-removed-highlight nil :foreground "brightred")
(set-face-attribute 'magit-diff-added-highlight nil :background "unspecified")
(set-face-attribute 'magit-diff-added-highlight nil :foreground "brightgreen")
(set-face-attribute 'magit-diff-removed nil :background "unspecified")
(set-face-attribute 'magit-diff-removed nil :foreground "color-88")
(set-face-attribute 'magit-diff-added nil :background "unspecified")
(set-face-attribute 'magit-diff-added nil :foreground "color-22")
(set-face-attribute 'smerge-markers nil :background "color-55")
(set-face-attribute 'smerge-markers nil :foreground "black")
(set-face-attribute 'smerge-upper nil :background "unspecified")
(set-face-attribute 'smerge-lower nil :background "unspecified")
(set-face-attribute 'helm-selection nil :background "unspecified")
(set-face-attribute 'helm-selection nil :foreground "magenta")
(set-face-attribute 'mode-line nil :background "unspecified")
(set-face-attribute 'mode-line nil :foreground "yellow")
(set-face-attribute 'mode-line-inactive nil :background "unspecified")
(set-face-attribute 'mode-line-inactive nil :foreground "yellow")
(set-face-attribute 'company-tooltip nil :background "unspecified")
(set-face-attribute 'company-tooltip nil :foreground "grey")
(set-face-attribute 'company-tooltip-selection nil :background "unspecified")
(set-face-attribute 'company-tooltip-selection nil :foreground "yellow")
(set-face-attribute 'company-tooltip-annotation nil :foreground "blue")
(set-face-attribute 'company-tooltip-common nil :foreground "blue")
(set-face-attribute 'company-tooltip-common-selection nil :foreground "blue")
(set-face-attribute 'magit-diff-our-highlight nil :foreground "color-214")
(set-face-attribute 'magit-diff-their-highlight nil :foreground "blue")
(set-face-attribute 'smerge-refined-removed nil :background "color-239")
(set-face-attribute 'smerge-refined-added nil :background "color-239")
(set-face-attribute 'flycheck-error nil :foreground "brightyellow")

;; set transparency
(defun on-after-init () (unless (display-graphic-p (selected-frame)) (set-face-background 'default "unspecified-bg" (selected-frame))))

;; calendar
(setq calendar-week-start-day 1
      calendar-day-name-array ["So" "Lu" "Ma" "Me" "Jo" "Ve" "Sa"]
      calendar-month-name-array ["Январь" "Февраль" "Март" "Апрель" "Май" 
                                 "Июнь" "Июль" "Август" "Сентябрь"
                                 "Октябрь" "Ноябрь" "Декабрь"])
(add-hook 'calendar-load-hook (lambda () (calendar-set-date-style 'european)))

;; backup
(setq backup-directory-alist '(("." . "~/.emacs.d/backup"))
  backup-by-copying t    ; Don't delink hardlinks
  version-control t      ; Use version numbers on backups
  delete-old-versions t  ; Automatically delete excess backups
  kept-new-versions 20   ; how many of the newest versions to keep
  kept-old-versions 5    ; and how many of the old
  )


;; user-defined
(defun modify-syntax-rust ()
  (modify-syntax-entry ?< "_")
  (modify-syntax-entry ?> "_")
  (modify-syntax-entry ?_ "w")
)

(add-hook 'rust-mode-hook 'modify-syntax-rust)

;; GPG
(require 'epa-file)
(epa-file-enable)

