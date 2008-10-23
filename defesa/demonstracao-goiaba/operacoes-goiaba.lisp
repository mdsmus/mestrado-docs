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

;; operações simples
(retrogradar #s(1 4 2 5))
(retrogradar #d(#p(0 1) #p(1 4) #p(2 2) #p(3 5)))

(transpor #s(1 4 2 5) 1)
(transpor #s(1 4 2 5) 2)

(rotacionar #s(1 4 2 5))
(rotacionar #s(1 4 2 5) 2)

;; concatenando operações
(rotacionar (retrogradar #s(1 4 2 5)))
(inverter (retrogradar (rotacionar (transpor #s(1 4 2 5) -1))) 2)

;; abstraindo contorno
(let* ((contorno #s(1 4 2 5))
       (rot (rotacionar contorno))
       (transp (transpor contorno 2))
       (retr (retrogradar contorno))
       (inv (inverter contorno))
       )
  (list contorno rot transp retr inv))


;; plotagem de contornos
;;; plota 1 contorno
(let ((*default-page-bounds* #(0 0 580 400)))
  (plot-page "/tmp/foo.pdf"
    (plot-contorno 50 50 "P(5 3 4 1 2 0)" #s(5 3 4 1 2 0))))

;;; plota vários contornos
(let ((contorno #s(0 5 3 4 1 3)))
  (let ((*default-page-bounds* #(0 0 580 400)))
    (plot-page "/tmp/foo.pdf"
      (plot-contorno-full 50 50
			  contorno "original" :red
			  (transpor contorno 2) "transposição" :green
			  (retrogradar contorno) "retrógrado" :blue
			  (inverter contorno) "inversão" :orange
			  (aumentar-altura contorno 2) "aumentar-altura" :lightblue
			  (rotacionar contorno 1) "rotação" :darkcyan
			  (insere-ponto contorno '(1 3) 2) "insere ponto" :purple
        ))))
