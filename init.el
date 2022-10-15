(setq user-full-name "Brendan Weibel")
(setq user-mail-address "bwhybel@icloud.com")

(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/") t)
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
(package-install 'use-package))

(eval-when-compile
  (require 'use-package))

(setq custom-file (expand-file-name
                   (concat user-emacs-directory "custom.el")))

(use-package git-gutter
  :ensure t
  :init (global-git-gutter-mode t))

(global-hl-line-mode t)

(tool-bar-mode -1)
(scroll-bar-mode -1)
(menu-bar-mode -1)
(setq inhibit-startup-message t)

(use-package zenburn-theme
  :ensure t
  :config
  (load-theme 'zenburn t))

(add-hook 'before-save-hook 'delete-trailing-whitespace)

(setq save-place-file (concat user-emacs-directory "places"))
(setq backup-directory-alist `(("." . ,(concat user-emacs-directory
					       "backups"))))

(use-package ledger-mode
  :ensure t)
