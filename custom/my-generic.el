(require 'my-funcs)

;; Global minor modes

(add-hook 'prog-mode-hook #'highlight-symbol-mode)

;; Global keybindings

(global-set-key [home] 'my-smart-beginning-of-line)
(global-set-key "\C-a" 'my-smart-beginning-of-line)
(global-set-key "\C-w" 'my-unix-werase-or-kill)
(global-set-key (vector 'remap 'goto-line) 'my-goto-line-with-feedback)
(define-key global-map (kbd "C-x |") 'my-toggle-windows-split)

;; Use shell-like backspace C-h, rebind help to F1
(define-key key-translation-map [?\C-h] [?\C-?])
(global-set-key (kbd "<f1>") 'help-command)
(global-set-key (kbd "M-h") 'kill-region-or-backward-word)

;; Setup alternative keybindings for extended-command
(global-set-key "\C-x\C-m" 'smex)
(key-chord-define-global "kk" 'smex)

(global-set-key (kbd "C-x M-w") 'my-wrap-text)
