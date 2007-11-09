(in-package :contornos)
(use-package :lisp-unit)

(define-test reduzir-contorno
  (assert-equal '((0 4) (3 1) (5 9) (7 0)) (reduzir-contorno '((0 4) (1 5) (2 3) (3 1) (4 4) (5 9) (6 3) (7 2))))
  )