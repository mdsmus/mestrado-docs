(in-package :contornos)
(use-package :lisp-unit)

(define-test retrogradar-pares
  (assert-equal '((1 3)(0 1)) (retrogradar-pares '((0 1)(1 3))))
  (assert-equal '((56 1) (41 2) (31 24)(4 9)) (retrogradar-pares '((4 9) (31 24) (41 2) (56 1)))))