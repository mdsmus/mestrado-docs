(load "/home/kroger/doc/classes/orientacao-marcos/marcos-mestrado/src/plot.lisp")
(load "/home/kroger/doc/classes/orientacao-marcos/marcos-mestrado/src/operacoes.lisp")

(defparameter *dir* "/tmp/foo/")

(let ((contorno '((1 1) (2 4) (5 3) (7 5))))
  (plot-contorno contorno "contorno" "t0")
  (plot-contorno (transpor-contorno contorno 1) "transposição" "t1")
  (plot-contorno (inverter-contorno contorno 0) "inversão" "t2" 0 10 10 -10)
  (plot-contorno (retrogradar-contorno contorno) "retrogado" "t3")
  (plot-contorno (aumentar-altura contorno 2) "aumenta altura" "t4")
  (plot-contorno (aumentar-duracao contorno 2) "aumenta duração" "t5")
  (plot-contorno (rotar-contorno contorno 2) "rotar" "t6"))

(ver "t2")

(loop for x from 0 to 6 do (ver (format nil "t~a" x)))

(preview "t0" "t1" "t2" "t3" "t4" "t5" "t6")

(preview-all '((1 1) (2 4) (5 3) (7 5))
                   '(transpor-contorno 1
                     retrogradar-contorno nil
                     inverter-contorno 0
                     aumentar-altura 2
                     aumentar-duracao 2
                     rotar-contorno 2))

(preview-all-short '((1 1) (2 4) (5 3) (7 5)) 1 nil 0 2 2 2)