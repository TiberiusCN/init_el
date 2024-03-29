;;; theme settings

(add-hook 'window-setup-hook 'on-after-init)

(add-to-list 'default-frame-alist '(background-color . "black"))

(display-time-mode 1)

(require 'package)
(setq package-archives '(
                         ("gnu" . "https://elpa.gnu.org/packages/")
                         ("melpa" . "https://melpa.org/packages/")))
(package-initialize)

;;; packages installation
(package-refresh-contents)
(unless (package-installed-p 'ace-window) (package-install 'ace-window))
(unless (package-installed-p 'all-the-icons) (package-install 'all-the-icons))
(unless (package-installed-p 'clean-buffers) (package-install 'clean-buffers))
(unless (package-installed-p 'clojure-mode) (package-install 'clojure-mode))
(unless (package-installed-p 'company-box) (package-install 'company-box))
(unless (package-installed-p 'company-statistics) (package-install 'company-statistics))
(unless (package-installed-p 'cyberpunk-theme) (package-install 'cyberpunk-theme))
(unless (package-installed-p 'dap-mode) (package-install 'dap-mode))
(unless (package-installed-p 'evil) (package-install 'evil))
(unless (package-installed-p 'evil-collection) (package-install 'evil-collection))
(unless (package-installed-p 'evil-easymotion) (package-install 'evil-easymotion))
(unless (package-installed-p 'evil-nerd-commenter) (package-install 'evil-nerd-commenter))
(unless (package-installed-p 'flycheck) (package-install 'flycheck))
(unless (package-installed-p 'format-all) (package-install 'format-all))
(unless (package-installed-p 'glsl-mode) (package-install 'glsl-mode))
(unless (package-installed-p 'google-translate) (package-install 'google-translate))
(unless (package-installed-p 'groovy-mode) (package-install 'groovy-mode))
(unless (package-installed-p 'helm-lsp) (package-install 'helm-lsp))
(unless (package-installed-p 'helm-projectile) (package-install 'helm-projectile))
(unless (package-installed-p 'indent-guide) (package-install 'indent-guide))
(unless (package-installed-p 'javadoc-lookup) (package-install 'javadoc-lookup))
(unless (package-installed-p 'json-mode) (package-install 'json-mode))
(unless (package-installed-p 'kotlin-mode) (package-install 'kotlin-mode))
(unless (package-installed-p 'linum-relative) (package-install 'linum-relative))
(unless (package-installed-p 'lsp-java) (package-install 'lsp-java))
(unless (package-installed-p 'lsp-metals) (package-install 'lsp-metals))
(unless (package-installed-p 'lsp-mode) (package-install 'lsp-mode))
(unless (package-installed-p 'lsp-treemacs) (package-install 'lsp-treemacs))
(unless (package-installed-p 'lsp-ui) (package-install 'lsp-ui))
(unless (package-installed-p 'lua-mode) (package-install 'lua-mode))
(unless (package-installed-p 'magit) (package-install 'magit))
(unless (package-installed-p 'maven-test-mode) (package-install 'maven-test-mode))
(unless (package-installed-p 'mvn) (package-install 'mvn))
(unless (package-installed-p 'nexus) (package-install 'nexus))
(unless (package-installed-p 'origami) (package-install 'origami))
(unless (package-installed-p 'pkgbuild-mode) (package-install 'pkgbuild-mode))
(unless (package-installed-p 'rainbow-delimiters) (package-install 'rainbow-delimiters))
(unless (package-installed-p 'realgud) (package-install 'realgud))
(unless (package-installed-p 'realgud-lldb) (package-install 'realgud-lldb))
(unless (package-installed-p 'redtick) (package-install 'redtick))
(unless (package-installed-p 'russian-holidays) (package-install 'russian-holidays))
(unless (package-installed-p 'rust-mode) (package-install 'rust-mode))
(unless (package-installed-p 'scala-mode) (package-install 'scala-mode))
(unless (package-installed-p 'sdcv) (package-install 'sdcv))
(unless (package-installed-p 'telega) (package-install 'telega))
(unless (package-installed-p 'transwin) (package-install 'transwin))
(unless (package-installed-p 'treemacs-evil) (package-install 'treemacs-evil))
(unless (package-installed-p 'treemacs-projectile) (package-install 'treemacs-projectile))
(unless (package-installed-p 'undo-tree) (package-install 'undo-tree))
(unless (package-installed-p 'unicode-fonts) (package-install 'unicode-fonts))
(unless (package-installed-p 'xclip) (package-install 'xclip))
(unless (package-installed-p 'yasnippet) (package-install 'yasnippet))

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
(require 'treemacs)
(require 'treemacs-evil)
(require 'treemacs-projectile)
(require 'lsp-treemacs)
;(require 'lsp-clients)
(require 'company-box)
(require 'lsp-ui)
(require 'helm-lsp)
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
(add-hook 'latex-mode-hook #'lsp-deferred)
(add-hook 'java-mode-hook #'lsp-deferred)
(add-hook 'scala-mode-hook #'lsp-deferred)
(add-hook 'clojure-mode-hook #'lsp-deferred)
(add-hook 'groovy-mode-hook #'lsp-deferred)
(add-hook 'kotlin-mode-hook #'lsp-deferred)

(require 'glsl-mode)
(add-to-list 'lsp-language-id-configuration '(glsl-mode . "render-lsp"))
  (lsp-register-client
   (make-lsp-client :new-connection (lsp-stdio-connection "render-lsp")
                    :major-modes '(glsl-mode)
                    :server-id 'render-lsp))
  (add-hook 'glsl-mode-hook #'lsp)

(require 'evil-easymotion)

(require 'magit)

(require 'russian-holidays)
(setq calendar-holidays russian-holidays)

(require 'evil-nerd-commenter)
(evilnc-default-hotkeys)

(require 'ace-window)

;;; bindings
(define-key evil-normal-state-map (kbd "C-j") nil)
(global-set-key (kbd "C-j") nil)
(define-key evil-normal-state-map (kbd "C-j f") 'lsp-ui-sideline-apply-code-actions)
(define-key evil-normal-state-map (kbd "C-j j") 'flycheck-next-error)
(define-key evil-normal-state-map (kbd "C-j k") 'flycheck-previous-error)
(define-key evil-normal-state-map (kbd "C-j d") 'lsp-find-definition)
(define-key evil-normal-state-map (kbd "C-j e") 'lsp-find-declaration)
(define-key evil-normal-state-map (kbd "C-j i") 'lsp-find-implementation)
(define-key evil-normal-state-map (kbd "C-j r") 'lsp-find-references)
(define-key evil-normal-state-map (kbd "C-j m") 'magit)
(define-key evil-normal-state-map (kbd "SPC SPC") 'treemacs)
(define-key treemacs-mode-map (kbd "SPC SPC") 'treemacs)
(define-key company-active-map (kbd "C-n") 'company-select-next-or-abort)
(define-key company-active-map (kbd "C-p") 'company-select-previous-or-abort)
(evilem-default-keybindings "SPC")
(define-key evil-normal-state-map (kbd "M-p") 'projectile-switch-project)
(global-set-key (kbd "C-j w") 'ace-select-window)
(global-set-key (kbd "C-j z") 'ace-swap-window)

;;; indentation
(progn (setq-default indent-tabs-mode nil)) ; tabs are spaces
(setq-default tab-width 2)
(setq tab-width 2)
(add-hook 'rust-mode-hook (function (lambda () (setq evil-shift-width 2))))

;;; vanilla settings
(show-paren-mode 1)
(menu-bar-mode 0)
(tool-bar-mode -1)
(scroll-bar-mode -1)

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

;(require 'vimish-fold)
;(require 'evil-vimish-fold)
;(add-hook 'prog-mode-hook 'evil-vimish-fold-mode)
;(add-hook 'text-mode-hook 'evil-vimish-fold-mode)

(require 'rainbow-delimiters)
(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)

(require 'yasnippet)
(add-hook 'prog-mode-hook 'yas-minor-mode)

(require 'format-all)
(add-hook 'prog-mode-hook 'format-all-mode)

(require 'indent-guide)
(add-hook 'prog-mode-hook 'indent-guide-global-mode)

;; syntax table
;(modify-syntax-entry ?< " " )
;(modify-syntax-entry ?> " " )

;; set colors
(set-face-attribute 'lsp-ui-doc-background nil :background "black")
(set-face-attribute 'magit-section-highlight nil :background "black")
(set-face-attribute 'magit-diff-context-highlight nil :background "black")
(set-face-attribute 'magit-diff-context-highlight nil :foreground "white") ; brightwhite
(set-face-attribute 'magit-diff-hunk-heading-highlight nil :background "dim gray") ; color-234
(set-face-attribute 'magit-diff-hunk-heading-highlight nil :foreground "magenta") ; color-201
(set-face-attribute 'magit-diff-hunk-heading nil :background "dim gray")
(set-face-attribute 'magit-diff-hunk-heading nil :foreground "dark red") ; color-88
(set-face-attribute 'magit-diff-removed-highlight nil :background "black")
(set-face-attribute 'magit-diff-removed-highlight nil :foreground "red1") ; brightred
(set-face-attribute 'magit-diff-added-highlight nil :background "black")
(set-face-attribute 'magit-diff-added-highlight nil :foreground "green1") ; brightgreen
(set-face-attribute 'magit-diff-removed nil :background "black")
(set-face-attribute 'magit-diff-removed nil :foreground "dark red")
(set-face-attribute 'magit-diff-added nil :background "black")
(set-face-attribute 'magit-diff-added nil :foreground "green4") ; color-22
(set-face-attribute 'smerge-markers nil :background "purple") ; color-55
(set-face-attribute 'smerge-markers nil :foreground "black")
(set-face-attribute 'smerge-upper nil :background "black")
(set-face-attribute 'smerge-lower nil :background "black")
(set-face-attribute 'helm-selection nil :background "black")
(set-face-attribute 'helm-selection nil :foreground "magenta")
(set-face-attribute 'mode-line nil :background "black")
(set-face-attribute 'mode-line nil :foreground "yellow")
(set-face-attribute 'mode-line-inactive nil :background "black")
(set-face-attribute 'mode-line-inactive nil :foreground "yellow")
(set-face-attribute 'company-tooltip nil :background "black")
(set-face-attribute 'company-tooltip nil :foreground "grey")
(set-face-attribute 'company-tooltip-selection nil :background "black")
(set-face-attribute 'company-tooltip-selection nil :foreground "yellow")
(set-face-attribute 'company-tooltip-annotation nil :foreground "blue")
(set-face-attribute 'company-tooltip-common nil :foreground "blue")
(set-face-attribute 'company-tooltip-common-selection nil :foreground "blue")
(set-face-attribute 'magit-diff-our-highlight nil :foreground "gold") ; color-214
(set-face-attribute 'magit-diff-their-highlight nil :foreground "blue")
(set-face-attribute 'smerge-refined-removed nil :background "gray5") ; color-239
(set-face-attribute 'smerge-refined-added nil :background "gray5")
(set-face-attribute 'flycheck-error nil :foreground "yellow1") ; brightyellow

(require 'company)
(set-face-attribute 'company-tooltip-annotation nil :foreground "sandy brown")
(set-face-attribute 'company-tooltip-common nil :foreground "green")
(set-face-attribute 'company-tooltip-common-selection nil :foreground "magenta")

;; set transparency
(defun on-after-init () (unless (display-graphic-p (selected-frame)) (set-face-background 'default "black-bg" (selected-frame))))

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

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ace-window-display-mode t)
 '(c-basic-offset 2)
 '(clean-buffer-list-delay-general 1)
 '(clean-buffer-list-delay-special 600)
 '(clean-buffer-list-kill-regexps '("\\`\\*Man " "^[^*]*$"))
 '(custom-enabled-themes '(cyberpunk))
 '(custom-safe-themes
   '("b89a4f5916c29a235d0600ad5a0849b1c50fab16c2c518e1d98f0412367e7f97" "79278310dd6cacf2d2f491063c4ab8b129fee2a498e4c25912ddaa6c3c5b621e" "5d09b4ad5649fea40249dd937eaaa8f8a229db1cec9a1a0ef0de3ccf63523014" "dde8c620311ea241c0b490af8e6f570fdd3b941d7bc209e55cd87884eb733b0e" "e6ff132edb1bfa0645e2ba032c44ce94a3bd3c15e3929cdf6c049802cf059a2a" "76bfa9318742342233d8b0b42e824130b3a50dcc732866ff8e47366aed69de11" "c4bdbbd52c8e07112d1bfd00fee22bf0f25e727e95623ecb20c4fa098b74c1bd" "a3b6a3708c6692674196266aad1cb19188a6da7b4f961e1369a68f06577afa16" "4bca89c1004e24981c840d3a32755bf859a6910c65b829d9441814000cf6c3d0" "990e24b406787568c592db2b853aa65ecc2dcd08146c0d22293259d400174e37" "7de92d9e450585f9f435f2d9b265f34218cb235541c3d0d42c154bbbfe44d4dd" "c3fa63eab93d1f0b4bf9f60a98a2848ba29c34cc6f2ef5cf4076d9c190a47a6c" "922f930fc5aeec220517dbf74af9cd2601d08f8250e4a15c385d509e22629cac" "c2bce71b37ffd6e95fbd3b98d6eaadd113ec308f85149cfc8f50dee716764fed" "09feeb867d1ca5c1a33050d857ad6a5d62ad888f4b9136ec42002d6cdf310235" "a0d9281cf41e8a226f0539a7f54e4812fdeaaec36c751b84671df97a54013465" "654b365467a92ff70c70f4926974e07dcdb34805d2787c51710b467e695342e6" "ff8be9ed2696bf7bc999423d909a603cb23a9525bb43135c0d256b0b9377c958" "11e57648ab04915568e558b77541d0e94e69d09c9c54c06075938b6abc0189d8" "4c8372c68b3eab14516b6ab8233de2f9e0ecac01aaa859e547f902d27310c0c3" "e26e879d250140e0d4c4d5ab457c32bcb29742599bd28c1ce31301344c6f2a11" "b6f06081b007b57be61b82fb53f27315e2cf38fa690be50d6d63d2b62a408636" "9a3c51c59edfefd53e5de64c9da248c24b628d4e78cc808611abd15b3e58858f" "595099e6f4a036d71de7e1512656e9375dd72cf60ff69a5f6d14f0171f1de9c1" default))
 '(default-frame-alist
    '((background-color . "black")
      (vertical-scroll-bars)
      (alpha . 85)))
 '(evil-shift-width 2)
 '(evil-undo-system 'undo-tree)
 '(helm-minibuffer-history-key "M-p")
 '(lsp-diagnostic-clean-after-change t)
 '(lsp-diagnostics-attributes
   '((unnecessary :foreground "dim gray")
     (deprecated :strike-through t)))
 '(lsp-lens-enable t)
 '(lsp-modeline-code-action-fallback-icon "‽")
 '(lsp-modeline-code-actions-segments '(count icon))
 '(lsp-rust-all-features nil)
 '(lsp-rust-build-on-save t)
 '(lsp-rust-clippy-preference "on")
 '(lsp-rust-wait-to-build nil)
 '(lsp-semantic-tokens-enable t)
 '(lsp-ui-sideline-diagnostic-max-lines 10)
 '(mode-line-format
   '("%e" ">"
     (:eval
      (timeclock-workday-elapsed-string))
     "< " mode-line-misc-info mode-line-client mode-line-remote mode-line-buffer-identification mode-line-position evil-mode-line-tag))
 '(opascal-indent-level 2)
 '(package-selected-packages
   '(lsp-metals lsp-scala maven-test-mode javadoc-lookup nexus mvn indent-guide scala-mode lsp-java kotlin-mode groovy-mode clojure-mode sdcv telega cyberpunk-theme timerfunctions clean-buffers all-the-icons evil-nerd-commenter google-translate unicode-fonts company-statistics lua-mode company-glsl glsl-mode origami auto-complete rainbow-delimiters json-mode magit xclip molokai-theme ## treemacs-evil linum-relative color-theme-modern rustic rust-mode evil))
 '(realgud-safe-mode nil)
 '(redtick-work-interval 480)
 '(tab-width 2)
 '(telega-mode-line-mode t)
 '(telega-server-libs-prefix "~/.emacs.d/telega"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(font-lock-comment-delimiter-face ((t (:foreground "gainsboro" :slant italic))))
 '(font-lock-comment-face ((t (:foreground "gainsboro" :slant italic))))
 '(indent-guide-face ((t (:foreground "dark violet" :slant normal))))
 '(magit-diff-their-highlight ((t (:inherit magit-diff-added-highlight :foreground "cyan"))))
 '(magit-head ((t (:foreground "cyan" :weight bold))))
 '(magit-reflog-checkout ((t (:foreground "cyan"))))
 '(rainbow-delimiters-base-error-face ((t (:inherit rainbow-delimiters-base-face :background "red" :foreground "yellow1"))))
 '(rainbow-delimiters-depth-1-face ((t (:inherit outline-1 :foreground "red1"))))
 '(rainbow-delimiters-depth-4-face ((t (:inherit outline-4 :foreground "magenta1"))))
 '(rainbow-delimiters-depth-5-face ((t (:inherit outline-5 :foreground "green1"))))
 '(smerge-refined-added ((t (:inherit smerge-refined-change :background "dark green"))))
 '(smerge-refined-removed ((t (:inherit smerge-refined-change :background "dark red")))))

(global-undo-tree-mode 1)

(require 'evil-collection)
(setq evil-collection-company-use-tng nil)
(evil-collection-init)

(add-to-list 'load-path "/dvl/nexus") (require 'nexus)

(global-prettify-symbols-mode 1)
(defun rust-unicode () (interactive) (setq prettify-symbols-alist
  '(
    ;; simplified
    ("!=" . "≠")
    ("<=" . "≤")
    ("==" . "≈")
    ("=>" . "⇒")
    ("->" . "→")
    (">=" . "≥")
    ;; traditionalizing
    ("::" . ".")
    ;; kotlin-like it
    ("move |&e|" . "μ")
    ("move |&it|" . "λ")
    ("move |&mut e|" . "μ")
    ("move |&mut it|" . "λ")
    ("move |()|" . "λ")
    ("move |_, _, _, _, _|" . "λ")
    ("move |_, _, _, _|" . "λ")
    ("move |_, _, _|" . "λ")
    ("move |_, _|" . "λ")
    ("move |_|" . "λ")
    ("move |acc, &it|" . "λ")
    ("move |acc, &mut it|" . "λ")
    ("move |acc, it|" . "λ")
    ("move |acc, mut it|" . "λ")
    ("move |e|" . "μ")
    ("move |it|" . "λ")
    ("move |mut acc, &it|" . "λ")
    ("move |mut acc, &mut it|" . "λ")
    ("move |mut acc, it|" . "λ")
    ("move |mut acc, mut it|" . "λ")
    ("move |mut e|" . "μ")
    ("move |mut it|" . "λ")
    ("move ||" . "λ")
    ("|&e|" . "μ")
    ("|&it|" . "λ")
    ("|&mut e|" . "μ")
    ("|&mut it|" . "λ")
    ("|()|" . "λ")
    ("|_, _, _, _, _|" . "λ")
    ("|_, _, _, _|" . "λ")
    ("|_, _, _|" . "λ")
    ("|_, _|" . "λ")
    ("|_|" . "λ")
    ("|acc, &it|" . "λ")
    ("|acc, &mut it|" . "λ")
    ("|acc, it|" . "λ")
    ("|acc, mut it|" . "λ")
    ("|e|" . "μ")
    ("|it|" . "λ")
    ("|mut acc, &it|" . "λ")
    ("|mut acc, &mut it|" . "λ")
    ("|mut acc, it|" . "λ")
    ("|mut acc, mut it|" . "λ")
    ("|mut e|" . "μ")
    ("|mut it|" . "λ")
    ("||" . "λ")
    ;; mut & let sence
    ("&mut " . "&—")
    ("let mut" . "l=")
    ("let" . "l-")
    ("if let" . "i—")
    ("while let" . "w—'")
    ;; iter
    ("into_iter" . "ï")
    ("iter" . "ī")
    ("iter_mut" . "ī-")
    ;; ref
    ("as_mut" . "&—")
    ("as_mut_slice" . "&—")
    ("as_ref" . "&")
    ("as_deref" . "&")
    ("as_slice" . "&")
    ("as_str" . "&")
    ;; lambda-like
    ("and_then" . "λ")
    ("fn" . "λ")
    ("for_each" . "λ_")
    ("try_for_each" . "λ_.")
    ("map" . "λ")
    ("map_or_else" . "λ")
    ("map_ok" . "λ")
    ("map_err" . "μ")
    ("filter_map" . "λ,—")
    ("filter" . "λ,")
    ("take_while" . "λ,")
    ("find_map" . "o,—")
    ("find" . "o,")
    ("map_err" . "μ")
    ("fold" . "β")
    ("or_else" . "λ—")
    ("ok_or" . "λ")
    ("ok_or_else" . "λ—")
    ("flatten" . "ξ")
    ("flat_map" . "ξ")
    ;; todo-like
    ("todo!()" . "…")
    ("todo!();" . "…")
    ("unimplemented!()" . "…")
    ("unimplemented!();" . "…")
    ;; simplified conditions
    ("else if" . "¿")
    ("else" . "!_")
    ("if" . "?_")
    ("match" . "M_")
    ("while" . "W_")
    ;; public
    ("pub fn" . "pb")
    ("pub use" . "pb")
    ("pub" . "pb")
    ("pub(crate) fn" . "pb^")
    ("pub(crate) use" . "pb^")
    ("pub(crate)" . "pb^")
    ("pub(super) fn" . "pbö")
    ("pub(super) use" . "pbö")
    ("pub(super)" . "pbö")
    ("pub(self) fn" . "pb_")
    ("pub(self) use" . "pb_")
    ("pub(self)" . "pb_")
  )))
(add-hook 'rust-mode-hook #'rust-unicode)

;; GUI only
(require 'xclip)
(xclip-mode 1)
(require 'transwin)
(global-set-key (kbd "C-j t") 'transwin-toggle-transparent-frame)

(provide 'init)

