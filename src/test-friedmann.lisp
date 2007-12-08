(in-package :goiaba)
(use-package :lisp-unit)

(define-test cas
  (assert-equal '(-1) (cas '((0 1) (1 0))))
  (assert-equal '(1) (cas '((0 0) (1 1))))
  (assert-equal '(-1 1) (cas '((0 1) (1 0) (2 3))))
  (assert-equal '(1 1) (cas '((0 0) (1 1) (2 2))))
  (assert-equal '(-1 -1) (cas '((0 2) (1 1) (2 0))))
  (assert-equal '(1 1 -1 -1) (cas '((0 0) (1 3) (2 4) (3 2) (4 0))))
  (assert-equal '(1 -1 -1) (cas '((0 0) (1 3) (2 3) (3 2) (4 0))))
  )

(define-test casv
  (assert-equal '(0 1) (casv '((0 1) (1 0))))
  (assert-equal '(1 0) (casv '((0 0) (1 1))))
  (assert-equal '(1 1) (casv '((0 1) (1 0) (2 3))))
  (assert-equal '(2 0) (casv '((0 0) (1 1) (2 2))))
  (assert-equal '(0 2) (casv '((0 2) (1 1) (2 0))))
  (assert-equal '(2 2) (casv '((0 0) (1 3) (2 4) (3 2) (4 0))))
  )

(define-test inverter-cas
  (assert-equal '(-1) (inverter-cas '(1)))
  (assert-equal '(-1 1) (inverter-cas '(1 -1)))
  (assert-equal '(-1 1 -1) (inverter-cas '(1 -1 1)))
  (assert-equal '(1 -1 1) (inverter-cas '(-1 1 -1)))
  )

(define-test cc
  (assert-equal '(1 0) (cc '((0 1) (1 0))))
  (assert-equal '(0 1) (cc '((0 0) (1 1))))
  (assert-equal '(1 0 2) (cc '((0 1) (1 0) (2 3))))
  (assert-equal '(0 1 2) (cc '((0 0) (1 1) (2 2))))
  (assert-equal '(2 1 0) (cc '((0 2) (1 1) (2 0))))
  (assert-equal '(0 2 3 1) (cc '((0 0) (1 3) (2 4) (3 2) (4 0))))
  (assert-equal '(0 2 1) (cc '((0 0) (1 3) (2 3) (3 2) (4 0))))
  )

(define-test inverter-cc
  (assert-equal '(0) (inverter-cc '(0)))
  (assert-equal '(1 0) (inverter-cc '(0 1)))
  (assert-equal '(2 1 0) (inverter-cc '(0 1 2)))
  (assert-equal '(2 0 1) (inverter-cc '(0 2 1)))
  (assert-equal '(3 1 2 0) (inverter-cc '(0 2 1 3)))
  (assert-equal '(4 2 1 3 0) (inverter-cc '(0 2 3 1 4)))
  (assert-equal '(3 0 2 4 1) (inverter-cc '(1 4 2 0 3)))
  )

(define-test cis-cc
  (assert-equal '(1) (cis-cc '(0 1)))
  (assert-equal '(1 1) (cis-cc '(0 1 2)))
  (assert-equal '(2 -1) (cis-cc '(0 2 1)))
  (assert-equal '(2 -1 2) (cis-cc '(0 2 1 3)))
  (assert-equal '(2 1 -2 3) (cis-cc '(0 2 3 1 4)))
  (assert-equal '(3 -2 -2 3) (cis-cc '(1 4 2 0 3)))
  )

(define-test cas-cc
  (assert-equal '(1) (cas-cc '(0 1)))
  (assert-equal '(1 1) (cas-cc '(0 1 2)))
  (assert-equal '(1 -1) (cas-cc '(0 2 1)))
  (assert-equal '(1 -1 1) (cas-cc '(0 2 1 3)))
  (assert-equal '(1 1 -1 1) (cas-cc '(0 2 3 1 4)))
  (assert-equal '(1 -1 -1 1) (cas-cc '(1 4 2 0 3)))
  )

;; inserir cia-aux

(define-test cia
  (assert-equal '((1) (0)) (cia '(0 1)))
  (assert-equal '((2 1) (0 0)) (cia '(0 1 2)))
  (assert-equal '((1 1) (1 0)) (cia '(0 2 1)))
  (assert-equal '((2 2 1) (1 0 0)) (cia '(0 2 1 3)))
  (assert-equal '((3 2 2 1) (1 1 0 0)) (cia '(0 2 3 1 4)))
  (assert-equal '((2 1 2 0)(2 2 0 1)) (cia '(1 4 2 0 3)))
  )
