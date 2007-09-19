(load "/home/kroger/doc/classes/orientacao-marcos/marcos-mestrado/src/plot.lisp")
(load "/home/kroger/doc/classes/orientacao-marcos/marcos-mestrado/src/operacoes.lisp")

(defparameter *dir* "/tmp/")

(let ((contorno '((1 1) (2 4) (5 3) (7 5))))
  (plot-contorno contorno "contorno" "t0")
  (plot-contorno (transpor-contorno contorno 1) "transposição" "t1")
  (plot-contorno (inverter-contorno contorno 0) "inversão" "t2" 0 10 10 -10)
  (plot-contorno (retrogradar-contorno contorno) "retrogado" "t3")
  (plot-contorno (aumentar-altura contorno 2) "aumenta altura" "t4")
  (plot-contorno (aumentar-duracao contorno 2) "aumenta duração" "t5")
  (plot-contorno (rotar-contorno contorno 2) "rotar" "t6"))