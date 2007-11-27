(in-package :goiaba)
(use-package :lisp-unit)

(define-test vetor-cas
  (assert-equal '(0 1) (vetor-cas '((0 1) (1 0))))
  (assert-equal '(1 0) (vetor-cas '((0 0) (1 1))))
  (assert-equal '(1 1) (vetor-cas '((0 1) (1 0) (2 3))))
  (assert-equal '(2 0) (vetor-cas '((0 0) (1 1) (2 2))))
  (assert-equal '(0 2) (vetor-cas '((0 2) (1 1) (2 0))))
  (assert-equal '(2 2) (vetor-cas '((0 0) (1 3) (2 4) (3 2) (4 0))))
  )
