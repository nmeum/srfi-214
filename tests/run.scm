(include "../implementation/tests.scm")

;; Ensure that `chicken-install -test` exits with a non-zero
;; exit status in case there are failed tests.
(let ((runner (test-runner-get)))
  (when (or
          (not (zero? (test-runner-fail-count runner)))
          (not (zero? (test-runner-xpass-count runner)))
          (not (zero? (test-runner-skip-count runner))))
    (exit 1)))
