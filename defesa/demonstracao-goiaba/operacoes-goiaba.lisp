(in-package #:goiaba)
(use-package :pdf)

;;;;;;;;;;;;;
;;; intro ;;;
;;;;;;;;;;;;;

;; classe contorno simples
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
;;; corrigir função
(aumentar-altura #s(1 4 2 5) 3)

(simple-plot
 #s(1 4 2 5) "original" :blue
 (aumentar-altura #s(1 4 2 5) 3) "expansão" :orange)

;; classe de contorno
;;; corrigir função
(cc #s(1 4 2 5))

;; série de contornos adjacentes
;;; corrigir função
(cas #s(1 4 2 5))

;; matriz de comparação
;;; corrigir função
(matriz-de-comparacao #s(1 4 2 5))

;; concatenação de operações
(rotacionar (retrogradar #s(1 4 2 5)))

(simple-plot
 #s(1 4 2 5) "original" :blue
 (retrogradar #s(1 4 2 5)) "retrógrado" :orange
 (rotacionar (retrogradar #s(1 4 2 5)) 3) "rotação do retrógrado" :darkgreen)

(inverter (retrogradar (rotacionar (transpor #s(1 4 2 5) -1))) 2)

;;; plota vários contornos
(let ((contorno #s(0 5 3 4 1 3)))
  (simple-plot
   contorno "original" :blue
   (transpor contorno 2) "transposição" :green
   (retrogradar contorno) "retrógrado" :red
   (inverter contorno) "inversão" :orange
   (rotacionar contorno 1) "rotação" :darkcyan
   ))

(let ((contorno #s(0 5 3 4 1 3)))
  (simple-plot
   contorno "original" :blue
   (aumentar-altura contorno 2) "expansão" :orange))

;;;;;;;;;;;;;;;;;;;;;;;;
;; voltar para slides ;;
;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; outros detalhes sobre o programa ;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; representação de contornos
;; simples
;; (5 9 6)
;; com duração
;; ((0 5)(1 9)(2 6))

;;; classes e macros
;; ponto: (x y)
;; #p(x y)
;; contorno-simples (y w)
;; #s(y w)
;; contorno-duracao ((x y)(x w))
;; #d(#p(x y) #p(z w))

;; classe contorno simples
#s(1 4 2 5)

;; classe contorno com duração
#d(#p(0 1) #p(1 4) #p(2 2) #p(3 5))

;; classe ponto
#p(0 1)
#p(1 4)
#p(2 2)
#p(3 5)

;; conversão entre classes (orientação a objetos)
(converter #s(1 4 2 5))
(converter #d(#p(0 1) #p(1 4) #p(2 2) #p(3 5)))

;; operações simples (orientação a objetos)
(retrogradar #s(1 4 2 5))
(retrogradar #d(#p(0 1) #p(1 4) #p(2 2) #p(3 5)))

;;; programação como metodologia de estudo

;;;;;;;;;;;;;;;;;;;;;;;;
;; voltar para slides ;;
;;;;;;;;;;;;;;;;;;;;;;;;
