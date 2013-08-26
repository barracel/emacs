; projectile settings
(setq projectile-show-paths-function 'projectile-hashify-with-relative-paths)

;(setq my-projectile-project-root "/home/oso/dev/workspace/jobboard")
;(setq my-projectile-project-root "/home/ofernandez/workspace/jobboard/")

(defadvice projectile-project-root (around my-force-projectile-project-root ())
  (if (boundp 'my-projectile-project-root)
      (setq ad-return-value my-projectile-project-root)
    ad-do-it))

(ad-activate 'projectile-project-root)
; still not working so deactivate it
(ad-deactivate 'projectile-project-root )

(defun my-projectile-compile-tags ()
  "compile etags for the current project"
  (interactive)
  (cd (projectile-project-root))
  ;; no sure why etags changes site by sete
  (compile "find . -regex  \".*\\\.\\\(py\\\|php\\\)\" -print | etags -L - ;sed -i 's@sete@site@g' TAGS "))






















