(in-package :goiaba)
(use-package :lisp-unit)

(define-test intervalo
  (assert-equal 1 (intervalo 1 2))
  (assert-equal -1 (intervalo 2 1))
  )

(define-test subtrair-elementos
  (assert-equal 1 (subtrair-elementos 2 1))
  (assert-equal -1 (subtrair-elementos 1 2))
  )

(define-test inverter-elemento
  (assert-equal 3 (inverter-elemento 1 2))
  (assert-equal -1 (inverter-elemento 1 0))
  (assert-equal 1 (inverter-elemento 3 2))
  )

;;

(define-test rotate
  (assert-equal '(3 2 4 5 7 1) (rotate '(1 3 2 4 5 7)))
  (assert-equal '(2 4 5 7 1 3) (rotate '(1 3 2 4 5 7) 2))
  (assert-equal '(2 1) (rotate '(1 2)))
  )

(define-test intervalos
  (assert-equal '(2 -1 2 1 2) (intervalos '(1 3 2 4 5 7)))
  (assert-equal '(1) (intervalos '(1 2)))
  )

(define-test subtrair-lista-indice
  (assert-equal '(-1 1 0 2 3 5) (subtrair-lista-indice '(1 3 2 4 5 7) 2))
  (assert-equal '(4 6 5 7 8 10) (subtrair-lista-indice '(1 3 2 4 5 7) -3))
  )

(define-test inverter-lista
  (assert-equal '(3 1 2 0 -1 -3) (inverter-lista '(1 3 2 4 5 7) 2))
  (assert-equal '(-1 -3 -2 -4 -5 -7) (inverter-lista '(1 3 2 4 5 7) 0))
  )

(define-test ponto-medio-lista
  (assert-equal 4 (ponto-medio-lista '(1 3 2 4 5 7)))
  (assert-equal 4 (ponto-medio-lista '(1 7)))
  (assert-equal 4 (ponto-medio-lista '(1 0 8 7)))
  )

(define-test ponto-medio-duracao
  (assert-equal 1 (ponto-medio-duracao '((0 1) (2 4))))
  (assert-equal 2 (ponto-medio-duracao '((0 1) (1 2) (2 4) (3 8) (4 12))))
  )

(define-test ponto-medio-altura
  (assert-equal 3 (ponto-medio-altura '((0 1) (2 5))))
  (assert-equal 6 (ponto-medio-altura '((0 0) (1 2) (2 4) (3 8) (4 12))))
  )

(define-test transpor-ponto
  (assert-equal '(0 2) (transpor-ponto '(0 1) 1))
  (assert-equal '(1 8) (transpor-ponto '(1 5) 3))
  )

(define-test transpor-contorno
  (assert-equal '((0 3) (1 6) (2 2) (3 8)) (transpor-contorno '((0 1) (1 4) (2 0) (3 6)) 2))
  (assert-equal '((0 5) (1 4)) (transpor-contorno '((0 1) (1 0)) 4))
  )

(define-test inverter-ponto
  (assert-equal '(0 -2) (inverter-ponto '(0 2) 0))
  (assert-equal '(1 7) (inverter-ponto '(1 9) 8))
  )

(define-test inverter-contorno
  (assert-equal '((0 3) (1 0) (2 4) (3 -2)) (inverter-contorno '((0 1) (1 4) (2 0) (3 6)) 2))
  (assert-equal '((0 7) (1 8)) (inverter-contorno '((0 1) (1 0)) 4))
  )

(define-test retrogradar-ponto
  (assert-equal '(-1 2) (retrogradar-ponto '(1 2) 0))
  (assert-equal '(14 9) (retrogradar-ponto '(2 9) 8))
  )

(define-test retrogradar-contorno
  (assert-equal '((0 5) (1 6) (2 0) (3 4) (4 1)) (retrogradar-contorno '((0 1) (1 4) (2 0) (3 6) (4 5))))
  (assert-equal '((0 0) (1 1)) (retrogradar-contorno '((0 1) (1 0))))
  )

(define-test aumentar-altura-ponto
  (assert-equal '(1 4) (aumentar-altura-ponto '(1 2) 2))
  (assert-equal '(2 72) (aumentar-altura-ponto '(2 9) 8))
  )

(define-test aumentar-altura
  (assert-equal '((0 3) (1 12) (2 0) (3 18) (4 15)) (aumentar-altura '((0 1) (1 4) (2 0) (3 6) (4 5)) 3))
  (assert-equal '((0 2) (1 0)) (aumentar-altura '((0 1) (1 0)) 2))
  )

(define-test aumentar-duracao-ponto
  (assert-equal '(2 2) (aumentar-duracao-ponto '(1 2) 2))
  (assert-equal '(16 9) (aumentar-duracao-ponto '(2 9) 8))
  )

(define-test aumentar-duracao
  (assert-equal '((0 1) (3 4) (6 0) (9 6) (12 5)) (aumentar-duracao '((0 1) (1 4) (2 0) (3 6) (4 5)) 3))
  (assert-equal '((0 1) (2 0)) (aumentar-duracao '((0 1) (1 0)) 2))
  )

(define-test ordena-crescente-duracao
  (assert-equal '((0 1) (1 2)) (ordena-crescente-duracao '((1 2) (0 1))))
  (assert-equal '((0 1) (1 2) (3 8)) (ordena-crescente-duracao '((1 2) (0 1) (3 8))))
  (assert-equal '((0 1) (1 2) (2 5) (3 8)) (ordena-crescente-duracao '((1 2) (0 1) (3 8) (2 5))))
  )

(define-test insere-ponto
  (assert-equal '((0 1) (1 4) (2 0)) (insere-ponto '((0 1) (2 0)) '(1 4)))
  (assert-equal '((0 1) (2 2) (3 4)) (insere-ponto '((0 1) (2 2)) '(3 4)))
  )

(define-test remover-duplicatas
  (assert-equal '((0 1)) (remover-duplicatas '((0 1) (0 1))))
  (assert-equal '((0 1) (1 3)) (remover-duplicatas '((0 1) (1 3) (0 1))))
  (assert-equal '((0 1) (1 3) (2 4) (3 5) (4 0)) (remover-duplicatas '((0 1) (1 3) (0 1) (2 4) (3 5) (4 0))))
  (assert-equal '((0 1) (1 3) (2 4) (3 5) (4 0)) (remover-duplicatas '((0 1) (1 3) (0 1) (2 4) (3 5) (4 0) (4 0))))
  )
