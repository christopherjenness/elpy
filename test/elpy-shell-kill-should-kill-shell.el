(ert-deftest elpy-shell-kill-should-kill-shell ()
  (elpy-testcase ()
    (python-mode)
    (elpy-mode 1)
    (let ((shell-buffer (process-buffer (elpy-shell-get-or-create-process))))
      (elpy-shell-kill t)
      (should (not (get-buffer-process shell-buffer))))))
