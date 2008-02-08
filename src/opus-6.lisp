(in-package #:goiaba)

(defun symbol->string (sim)
  (string-downcase (symbol-name sim)))

(let* ((classe-de-contorno '(0 1 4 2 3))
       (cd (contorno-simples->contorno-com-duracao classe-de-contorno))
       (rot-1 (rotacionar (make-contorno-simples classe-de-contorno) 1))
       (rot-2 (rotacionar (make-contorno-simples classe-de-contorno) 2))
       (rot-3 (rotacionar (make-contorno-simples classe-de-contorno) 3))
       (rot-4 (rotacionar (make-contorno-simples classe-de-contorno) 4))
       (ret (retrogradar (make-contorno-simples classe-de-contorno)))
       (ret-rot1 (rotacionar (make-contorno-simples ret) 1))
       (ret-rot2 (rotacionar (make-contorno-simples ret) 2))
       (ret-rot3 (rotacionar (make-contorno-simples ret) 3))
       (ret-rot4 (rotacionar (make-contorno-simples ret) 4))
       (inv (inverter (make-contorno-simples classe-de-contorno)))
       (inv-rot1 (rotacionar (make-contorno-simples inv) 1))
       (inv-rot2 (rotacionar (make-contorno-simples inv) 2))
       (inv-rot3 (rotacionar (make-contorno-simples inv) 3))
       (inv-rot4 (rotacionar (make-contorno-simples inv) 4))
       (ret-inv (inverter (make-contorno-simples ret)))
       (ret-inv-rot1 (rotacionar (make-contorno-simples ret-inv) 1))
       (ret-inv-rot2 (rotacionar (make-contorno-simples ret-inv) 2))
       (ret-inv-rot3 (rotacionar (make-contorno-simples ret-inv) 3))
       (ret-inv-rot4 (rotacionar (make-contorno-simples ret-inv) 4)))
  (print (list classe-de-contorno rot-1 rot-2 rot-3 rot-4
               ret ret-rot1 ret-rot2 ret-rot3 ret-rot4
               inv inv-rot1 inv-rot2 inv-rot3 inv-rot4
               ret-inv ret-inv-rot1 ret-inv-rot2 ret-inv-rot3 ret-inv-rot4)))

;; (apply #'preview (mapcar #'symbol->string '(cc rot-1 rot-2 rot-3 rot-4 ret ret-rot1 ret-rot2 ret-rot3 ret-rot4 inv inv-rot1 inv-rot2 inv-rot3 inv-rot4 ret-inv ret-inv-rot1 ret-inv-rot2 ret-inv-rot3 ret-inv-rot4)))

