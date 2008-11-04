(in-package #:goiaba)
(use-package :pdf)

;; classe contorno simples
#s(1 4 2 5)

;; classe contorno com duração
#d(#p(0 1) #p(1 4) #p(2 2) #p(3 5))

;; classe ponto
#p(0 1)
#p(1 4)
#p(2 2)
#p(3 5)

;; conversão entre classes
(converter #s(1 4 2 5))
(converter #d(#p(0 1) #p(1 4) #p(2 2) #p(3 5)))

;; plotagem de contornos

(simple-plot #s(5 3 4 1 2 0) "P(5 3 4 1 2 0)" :blue)

;; operações simples
(retrogradar #s(1 4 2 5))
(retrogradar #d(#p(0 1) #p(1 4) #p(2 2) #p(3 5)))

(simple-plot
 #s(1 4 2 5) "original" :blue
 (retrogradar #s(1 4 2 5)) "retrógrado" :orange)


(transpor #s(1 4 2 5) 1)
(transpor #s(1 4 2 5) 2)

(simple-plot
 #s(1 4 2 5) "original" :blue
 (transpor #s(1 4 2 5) 3) "transposição" :orange)


(rotacionar #s(1 4 2 5))
(rotacionar #s(1 4 2 5) 2)

(simple-plot
 #s(1 4 2 5) "original" :blue
 (rotacionar #s(1 4 2 5) 3) "rotação 3" :orange)

;; concatenando operações
(rotacionar (retrogradar #s(1 4 2 5)))

(simple-plot
 #s(1 4 2 5) "original" :blue
 (retrogradar #s(1 4 2 5)) "retrógrado" :orange
 (rotacionar (retrogradar #s(1 4 2 5)) 3) "rotação do retrógrado" :darkgreen)

(inverter (retrogradar (rotacionar (transpor #s(1 4 2 5) -1))) 2)

;;; plota vários contornos
(simple-plot
 #s(0 5 3 4 1 3) "original" :blue
 (inverter #s(0 5 3 4 1 3)) "inversão" :darkgreen)

(simple-plot
 #s(0 5 3 4 1 3) "original" :blue
 (rotacionar #s(0 5 3 4 1 3) 1) "rotação 1" :red)

(let ((contorno #s(0 5 3 4 1 3)))
  (simple-plot
   contorno "original" :blue
   (transpor contorno 2) "transposição" :green
   (retrogradar contorno) "retrógrado" :red
   (inverter contorno) "inversão" :orange
   (aumentar-altura contorno 2) "aumentar-altura" :lightgreen
   (rotacionar contorno 1) "rotação" :darkcyan
   ))
