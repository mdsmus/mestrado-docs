(in-package :goiaba)
(use-package :lisp-unit)

(define-test c-space
  (assert-equal '(1 0) (c-space '((0 1) (1 0))))
  )
