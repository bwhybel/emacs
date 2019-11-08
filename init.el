(setq user-full-name "Brendan Weibel")
(setq user-mail-address "bwhybel@icloud.com")

(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
             '("melpa-stable" . "http://stable.melpa.org/packages/") t)
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
(package-install 'use-package))

(eval-when-compile
  (require 'use-package))

(require 'org)
(org-babel-load-file (expand-file-name
                      (concat user-emacs-directory "config.org")))

(setq custom-file (expand-file-name
                   (concat user-emacs-directory "custom.el")))
