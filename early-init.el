(setq package-enable-at-startup nil)
(setq straight-use-package-by-default 1)

(setq gc-cons-threshold most-positive-fixnum)

(defvar default-file-name-handler-alist file-name-handler-alist)
(setq file-name-handler-alist nil)

(add-hook 'emacs-startup-hook
          (lambda ()
            (setq file-name-handler-alist default-file-name-handler-alist)) 100)

(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
;; Do not show default modeline until doom-modeline is loaded
(setq-default mode-line-format nil)
