(package-initialize)
(elpy-enable)
(add-hook 'elpy-mode-hook (lambda () (highlight-indentation-mode -1)))
(elpy-use-ipython)

(defun barracel-elpy-use-ipython ()
  "Set defaults to use IPython instead of the standard interpreter."
  (interactive)
  (if (boundp 'python-python-command)
      ;; Emacs 24 until 24.3
      (setq python-python-command "ipython")
    ;; Emacs 24.3 and onwards.

    ;; This is from the python.el commentary.
    ;; Settings for IPython 0.11:
    (setq python-shell-interpreter "ipython"
          python-shell-interpreter-args ""
          python-shell-prompt-regexp "In \\[[0-9]+\\]: "
          python-shell-prompt-output-regexp "Out\\[[0-9]+\\]: "
          python-shell-completion-string-code  "';'.join(__IP.complete('''%s'''))\n"
          python-shell-completion-module-string-code "")))

;(barracel-elpy-use-ipython)
