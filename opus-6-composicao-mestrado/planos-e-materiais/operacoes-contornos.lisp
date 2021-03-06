(in-package #:goiaba)

;; imprime gráficos
(let* ((original (make-contorno-duracao-lista '((0 5) (1 3) (2 4) (3 1) (4 2) (5 0))))
       (inversao (inverter original))
       (retrogrado (retrogradar original))
       (rotacao1 (rotacionar original 1))
       (rotacao2 (rotacionar original 2))
       (rotacao3 (rotacionar original 3))
       (rotacao4 (rotacionar original 4))
       (rotacao5 (rotacionar original 5))
       (irotacao1 (rotacionar inversao 1))
       (irotacao2 (rotacionar inversao 2))
       (irotacao3 (rotacionar inversao 3))
       (irotacao4 (rotacionar inversao 4))
       (irotacao5 (rotacionar inversao 5)))
  (with-document ()
    (with-page ()
      (plot-contorno 50  700 "original" original :width 100 :height 100 :font-size 5.0)
      (plot-contorno 220 700 "inversão" inversao :width 100 :height 100 :font-size 5.0)
      (plot-contorno 400 700 "retrógrado" retrogrado :width 100 :height 100 :font-size 5.0)
      (plot-contorno 50  550 "rotação1" rotacao1 :width 100 :height 100 :font-size 5.0)
      (plot-contorno 220 550 "rotação2" rotacao2 :width 100 :height 100 :font-size 5.0)
      (plot-contorno 400 550 "rotação3" rotacao3 :width 100 :height 100 :font-size 5.0)
      (plot-contorno 50  400 "rotação4" rotacao4 :width 100 :height 100 :font-size 5.0)
      (plot-contorno 220 400 "rotação5" rotacao5 :width 100 :height 100 :font-size 5.0))
    (with-page ()
      (plot-contorno 50  700 "inversão" inversao :width 100 :height 100 :font-size 5.0)
      (plot-contorno 220 700 "irotação1" irotacao1 :width 100 :height 100 :font-size 5.0)
      (plot-contorno 400 700 "irotação2" irotacao2 :width 100 :height 100 :font-size 5.0)
      (plot-contorno 50  550 "irotação3" irotacao3 :width 100 :height 100 :font-size 5.0)
      (plot-contorno 220 550 "irotação4" irotacao4 :width 100 :height 100 :font-size 5.0)
      (plot-contorno 400 550 "irotação5" irotacao5 :width 100 :height 100 :font-size 5.0))
    (write-document "/tmp/foo.pdf")))

;; retorna operações simples de contorno original
(let* ((original (make-contorno-duracao-lista '((0 5) (1 3) (2 4) (3 1) (4 2) (5 0))))
       (inversao (inverter original))
       (retrogrado (retrogradar original))
       (rotacao1 (rotacionar original 1))
       (rotacao2 (rotacionar original 2))
       (rotacao3 (rotacionar original 3))
       (rotacao4 (rotacionar original 4))
       (rotacao5 (rotacionar original 5)))
  (format nil "~a" (list
                    original
                    inversao
                    retrogrado
                    rotacao1
                    rotacao2
                    rotacao3
                    rotacao4
                    rotacao5)))

