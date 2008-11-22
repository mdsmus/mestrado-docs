(in-package #:goiaba)
(use-package :pdf)

;;;;;;;;;;;;;
;;; intro ;;;
;;;;;;;;;;;;;

;; o que é o Goiaba e interface

;; objeto contorno simples
#s(1 4 2 5)

;; operações simples
(retrogradar #s(1 4 2 5))

;; plotagem de contornos
(simple-plot #s(5 3 4 1 2 0) "P(5 3 4 1 2 0)" :blue)

(simple-plot
 #s(1 4 2 5) "original" :blue
 (retrogradar #s(1 4 2 5)) "retrógrado" :orange)

;;;;;;;;;;;;;;;;;;;;;;;;
;;; outras operações ;;;
;;;;;;;;;;;;;;;;;;;;;;;;

;; transposição
(transpor #s(1 4 2 5) 1)

(simple-plot
 #s(1 4 2 5) "original" :blue
 (transpor #s(1 4 2 5) 3) "transposição" :orange)

;; rotação
(rotacionar #s(1 4 2 5))
(rotacionar #s(1 4 2 5) 2)

(simple-plot
 #s(1 4 2 5) "original" :blue
 (rotacionar #s(1 4 2 5) 3) "rotação 3" :orange)

;; inversão
(inverter #s(1 4 2 5))
(inverter #s(1 4 2 5) 3)

(simple-plot
 #s(1 4 2 5) "original" :blue
 (inverter #s(1 4 2 5)) "inversão" :orange)

;; expansão de alturas
;;; função a ser corrigida
(aumentar-altura #s(0 4 2 5) 3)

(simple-plot
 #s(0 4 2 5) "original" :blue
 (aumentar-altura #s(0 4 2 5) 3) "expansão" :orange)

;; matriz de comparação
;;; explicar com slides
(print-matriz-de-comparacao #s(1 4 2 5))

;; concatenação de operações
(rotacionar (retrogradar #s(1 4 2 5)))

(simple-plot
 #s(1 4 2 5) "original" :blue
 (retrogradar #s(1 4 2 5)) "retrógrado" :orange
 (rotacionar (retrogradar #s(1 4 2 5)) 3) "rotação do retrógrado" :darkgreen)

(inverter (retrogradar (rotacionar (transpor #s(1 4 2 5) -1))) 2)

;;; plotagem de vários contornos
(let ((contorno #s(0 5 3 4 1 3)))
  (simple-plot
   contorno "original" :blue
   (transpor contorno 2) "transposição" :green
   (retrogradar contorno) "retrógrado" :red
   (inverter contorno) "inversão" :orange
   (rotacionar contorno 1) "rotação" :darkcyan
   ))

;;;;;;;;;;;;;;;;;;;;;;;;
;; voltar para slides ;;
;;;;;;;;;;;;;;;;;;;;;;;;

;; operações utilizadas no fugato

;; sujeito
(simple-plot
 #s(5 3 4 1 2 0) "P" :blue)

(simple-plot
 (rotacionar #s(5 3 4 1 2 0) 3) "rot(P) 3" :darkgreen)

(let ((contorno #s(5 3 4 1 2 0)))
  (simple-plot
   contorno "P" :blue
   (rotacionar contorno 3) "rot(P) 3" :darkgreen))

;; contra-sujeito

(simple-plot
 (retrogradar #s(5 3 4 1 2 0)) "retr(P)" :darkcyan)

(simple-plot
 (rotacionar (retrogradar #s(5 3 4 1 2 0)) 5) "rot(retr(P) 5)" :red)

(simple-plot
 (rotacionar (retrogradar #s(5 3 4 1 2 0)) 4) "rot(retr(P) 4)" :green)

(simple-plot
 (rotacionar (retrogradar #s(5 3 4 1 2 0)) 3) "rot(retr(P) 3)" :orange)

(let ((contorno #s(5 3 4 1 2 0)))
  (simple-plot
   (rotacionar (retrogradar contorno) 5) "rot(retr(P) 5)" :red
   (rotacionar (retrogradar contorno) 4) "rot(retr(P) 4)" :green
   (rotacionar (retrogradar contorno) 3) "rot(retr(P) 3)" :orange))

;;;;;;;;;;;;;;;;;;;;;;;;
;; voltar para slides ;;
;;;;;;;;;;;;;;;;;;;;;;;;
