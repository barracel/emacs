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

      (set-face-attribute  'mode-line
                           nil
                           :background zenburn-bg+1
                           :box '(:line-width 1 :style released-button))
      (set-face-attribute  'mode-line-inactive
                           nil
                           :background zenburn-bg
                           :box '(:line-width 1 :style released-button))
))

(scroll-bar-mode -1)
