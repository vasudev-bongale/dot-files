;; custom set org todo keywords
;; Add MELPA stable repository

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(require 'package)
(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
                    (not (gnutls-available-p))))
       (proto (if no-ssl "http" "https")))
  (when no-ssl
    (warn "\
Your version of Emacs does not support SSL connections,
which is unsafe because it allows man-in-the-middle attacks.
There are two things you can do about this warning:
1. Install an Emacs version that does support SSL and be safe.
2. Remove this warning from your init file so you won't see it again."))
  ;; Comment/uncomment these two lines to enable/disable MELPA and MELPA Stable as desired
  (add-to-list 'package-archives (cons "melpa" (concat proto "://melpa.org/packages/")) t)
  ;;(add-to-list 'package-archives (cons "melpa-stable" (concat proto "://stable.melpa.org/packages/")) t)
  (when (< emacs-major-version 24)
    ;; For important compatibility libraries like cl-lib
    (add-to-list 'package-archives (cons "gnu" (concat proto "://elpa.gnu.org/packages/")))))
(package-initialize)
(setq org-todo-keywords
      '((sequence "NEXT(n)" "SOMEDAY(s)" "TODO(t)" "WAITING(w)" "|" "DONE(d)" "CANCELLED(c)")))
;; inhibit the startup screen
(setq inhibit-startup-screen t)
(setq initial-scratch-message nil)
(add-to-list 'load-path "~/.emacs.d/lisp")
;; Monokai theme
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
;; Customize the theme
(setq ;; background
      monokai-background	"#000000")
(setq monokai-height-minus-1 1.0
      monokai-height-plus-1 1.0
      monokai-height-plus-2 1.0
      monokai-height-plus-3 1.0
      monokai-height-plus-4 1.0)
;; Set a default font
(set-default-font "Courier 18" nil t)
;; Set global variable for visual-line wrapping
(global-visual-line-mode 1)
;; Setting shortcuts for agenda views
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-cb" 'org-iswitchb)
;; Use Emacs terminfo, not system terminfo
(setq system-uses-terminfo nil)
;; Keeping track of when a TODO task was marked DONE
(setq org-log-done 'time)
;; Need to set org-agenda-files
(load-library "find-lisp")
(setq org-agenda-files
   (find-lisp-find-files "~/Dropbox/ORG" "\.org$"))
;;(setq org-agenda-files (list "~/ncsu/coursework/csc724/csc724.org"
;;			     "~/ncsu/coursework/csc505/csc505.org"
;;			     "~/ncsu/coursework/csc540/csc540.org"
;;			     "~/Dropbox/ORG"))
;; Ability to open files externally from dired
;; (require 'openwith)
;; (openwith-mode t)
;; (setq openwith-associations '(("\\.pdf\\'" "open" (file))))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#272822" "#F92672" "#A6E22E" "#E6DB74" "#66D9EF" "#FD5FF0" "#A1EFE4" "#F8F8F2"])
 '(compilation-message-face (quote default))
 '(custom-enabled-themes (quote (monokai)))
 '(custom-safe-themes
   (quote
    ("ff4622518d9c3bc04a6a35cff8ec558542c250ffaa6b4cd472717e78b1a620dd" "df8cf3aa0220df607ac88d932a645d9028b91424dace41470d86c088a1216f28" "aa14b381467613ad1155efae2acee92751e6633b4f0ad40f8ccd105bcbd11d96" "88600a774a61888fb8c490b63ca14cf86190f1a36d610eefdc05720be646bbdf" "1436d643b98844555d56c59c74004eb158dc85fc55d2e7205f8d9b8c860e177f" "a22f40b63f9bc0a69ebc8ba4fbc6b452a4e3f84b80590ba0a92b4ff599e53ad0" "f4f9567e7ef9347638ce05614a3c1d6e71b32410992e7a985adccc05fccbb921" "351f34e7889a0b2158efc76d16c5e7051347213b49274cfadc16c16ef39acab0" "2925ed246fb757da0e8784ecf03b9523bccd8b7996464e587b081037e0e98001" default)))
 '(fci-rule-color "#3C3D37")
 '(highlight-changes-colors (quote ("#FD5FF0" "#AE81FF")))
 '(highlight-tail-colors
   (quote
    (("#3C3D37" . 0)
     ("#679A01" . 20)
     ("#4BBEAE" . 30)
     ("#1DB4D0" . 50)
     ("#9A8F21" . 60)
     ("#A75B00" . 70)
     ("#F309DF" . 85)
     ("#3C3D37" . 100))))
 '(magit-diff-use-overlays nil)
 '(package-selected-packages
   (quote
    (org-bullets rainbow-mode beacon switch-window which-key ivy sunrise-x-modeline sunrise-x-buttons sunrise-commander symon fancy-battery spaceline projectile markdown-mode markchars)))
 '(pos-tip-background-color "#FFFACE")
 '(pos-tip-foreground-color "#272822")
 '(symon-mode t)
 '(vc-annotate-background nil)
 '(vc-annotate-color-map
   (quote
    ((20 . "#F92672")
     (40 . "#CF4F1F")
     (60 . "#C26C0F")
     (80 . "#E6DB74")
     (100 . "#AB8C00")
     (120 . "#A18F00")
     (140 . "#989200")
     (160 . "#8E9500")
     (180 . "#A6E22E")
     (200 . "#729A1E")
     (220 . "#609C3C")
     (240 . "#4E9D5B")
     (260 . "#3C9F79")
     (280 . "#A1EFE4")
     (300 . "#299BA6")
     (320 . "#2896B5")
     (340 . "#2790C3")
     (360 . "#66D9EF"))))
 '(vc-annotate-very-old-color nil)
 '(weechat-color-list
   (quote
    (unspecified "#272822" "#3C3D37" "#F70057" "#F92672" "#86C30D" "#A6E22E" "#BEB244" "#E6DB74" "#40CAE4" "#66D9EF" "#FB35EA" "#FD5FF0" "#74DBCD" "#A1EFE4" "#F8F8F2" "#F8F8F0"))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
;; set scrollbar mode to disabled by default
(scroll-bar-mode -1)
;; Add latex bin path
(getenv "PATH")
 (setenv "PATH"
(concat
 "/Library/TeX/texbin" ":"
(getenv "PATH")))
;; Add shortcut to open the organizer file quicly
(global-set-key (kbd "C-c o") 
                (lambda () (interactive) (find-file "~/Dropbox/ORG/organizer.org")))
;; Change yes-or-no questions into y-n questions
(defalias 'yes-or-no-p 'y-or-n-p)
;; Projectile - project manager - recognizes git
(use-package projectile
  :ensure t
  :init
    (projectile-mode 1))
(global-set-key (kbd "<f5>") 'projectile-compile-project)
;; New startup Dashboard
(use-package dashboard
  :ensure t
  :config
    (dashboard-setup-startup-hook)
    (setq dashboard-items '((recents  . 5)
                            (projects . 5)))
    (setq dashboard-banner-logo-title ""))
;; Customize mode-line
(use-package spaceline
  :ensure t
  :config
  (require 'spaceline-config)
    (setq spaceline-buffer-encoding-abbrev-p nil)
    (setq spaceline-line-column-p nil)
    (setq spaceline-line-p nil)
    (setq powerline-default-separator (quote arrow))
    (spaceline-spacemacs-theme))
    (setq powerline-default-separator nil)
    (setq line-number-mode t)
    (setq column-number-mode t)
    (setq display-time-24hr-format t)
    (setq display-time-format "%H:%M - %d %B %Y")
    (display-time-mode 1)
;; Batter Indicator
(use-package fancy-battery
  :ensure t
  :config
    (setq fancy-battery-show-percentage t)
    (setq battery-update-interval 15)
    (if window-system
      (fancy-battery-mode)
      (display-battery-mode)))
;; System Monitor
(use-package symon
  :ensure t
  :bind
  ("s-h" . symon-mode))
(use-package ivy
  :ensure t)
;; Make scrolling nice
(setq scroll-conservatively 100)
;; Auto-completion of keys
(use-package which-key
  :ensure t
  :config
    (which-key-mode))
(defun kill-current-buffer ()
  "Kills the current buffer."
  (interactive)
  (kill-buffer (current-buffer)))
(global-set-key (kbd "C-x k") 'kill-current-buffer)
(global-set-key (kbd "C-x b") 'ibuffer)
;; Beacon - Highlights the cursor when a buffer is changed
(use-package beacon
  :ensure t
  :config
    (beacon-mode 1))
;; Rainbow mode
(use-package rainbow-mode
  :ensure t
  :init
    (add-hook 'prog-mode-hook 'rainbow-mode))
(add-hook 'emacs-lisp-mode-hook 'eldoc-mode)
;; Org common settings
(setq org-ellipsis " ")
(setq org-src-fontify-natively t)
(setq org-src-tab-acts-natively t)
(setq org-confirm-babel-evaluate nil)
(setq org-export-with-smart-quotes t)
(setq org-src-window-setup 'current-window)
(add-hook 'org-mode-hook 'org-indent-mode)
;; Beautify bullets in org
(use-package org-bullets
  :ensure t
  :config
  (add-hook 'org-mode-hook (lambda () (org-bullets-mode))))


