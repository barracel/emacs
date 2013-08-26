; extra packages
(prelude-ensure-module-deps '(elpy edit-server highlight-symbol visible-mark ahg))

(setq my-lib-dir (expand-file-name "lib" prelude-personal-dir))
(setq my-custom-dir (expand-file-name "custom" prelude-personal-dir))

(add-to-list 'load-path my-lib-dir)
(add-to-list 'load-path my-custom-dir)

(mapc 'load (directory-files my-custom-dir 't "^[^#].*el$"))
