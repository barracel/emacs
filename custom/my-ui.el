; if zenburn is enabled tweak some colors
(if (fboundp 'zenburn-with-color-variables)
    (zenburn-with-color-variables
      (set-face-background 'region zenburn-fg-1)

      (require 'paren)
      (set-face-background 'show-paren-match-face zenburn-fg-1)
      (set-face-foreground 'show-paren-match-face (face-foreground 'default))
      (set-face-attribute 'show-paren-match-face nil :weight 'extra-bold)

      (set-face-background 'isearch zenburn-fg)
      (set-face-foreground 'isearch zenburn-bg)
      (set-face-background 'lazy-highlight zenburn-fg-1)
      (set-face-background 'highlight-symbol-face zenburn-fg-1)

      (set-face-attribute  'mode-line
                           nil
                           :background zenburn-bg+1
                           :box '(:line-width 1 :style released-button))
      (set-face-attribute  'mode-line-inactive
                           nil
                           :background zenburn-bg
                           :box '(:line-width 1 :style released-button))
))



(desktop-save-mode 1)
(scroll-bar-mode -1)

; zenburn is not handling correctly colors in my lucid's emacs
( if (string-equal (shell-command-to-string "lsb_release -cs") "lucid\n")
    (setq ansi-term-color-vector [unspecified "#3f3f3f" "#cc9393" "#7f9f7f" "#f0dfaf" "#8cd0d3" "#dc8cc3" "#93e0e3" "#dcdccc"])
)
