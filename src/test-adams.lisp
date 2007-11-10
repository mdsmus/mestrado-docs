(in-package :goiaba)
(use-package :lisp-unit)

(define-test reduzir-contorno
  (assert-equal '((0 4) (3 0) (5 9) (7 2)) (reduzir-contorno '((0 4) (1 5) (2 3) (3 0) (4 6) (5 9) (6 1) (7 2))))
  )

(define-test inclinacoes-contorno
  (assert-equal '(1) (inclinacoes-contorno '((0 0) (1 1))))
  (assert-equal '(1 -2) (inclinacoes-contorno '((0 4) (1 5) (2 3))))
  (assert-equal '(1 -2 -2 3 5 -6 -1) (inclinacoes-contorno '((0 4) (1 5) (2 3) (3 1) (4 4) (5 9) (6 3) (7 2))))
  )

(define-test inclinacoes-contorno-positivo-negativo
  (assert-equal '(1) (inclinacoes-contorno-positivo-negativo '((0 0) (1 1))))
  (assert-equal '(1 -1) (inclinacoes-contorno-positivo-negativo '((0 4) (1 5) (2 3))))
  (assert-equal '(1 -1 -1 1 1 -1 -1) (inclinacoes-contorno-positivo-negativo '((0 4) (1 5) (2 3) (3 1) (4 4) (5 9) (6 3) (7 2))))
  )