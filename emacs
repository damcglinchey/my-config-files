(add-to-list 'load-path "~/.emacs.d/")
;; Use google style
(require 'google-c-style)
(add-hook 'c-mode-common-hook 'google-set-c-style)
(add-hook 'c-mode-common-hook 'google-make-newline-indent)
;; display line and column
(setq column-number-mode t)
;; always delete trailing whitespace on save
(add-hook 'before-save-hook 'delete-trailing-whitespace)