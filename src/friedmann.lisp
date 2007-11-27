(in-package #:goiaba)

(defun vetor-cas (pares)
  "retorna o vetor de contour adjacency series"
  (let* ((inclinacoes (inclinacoes-contorno-positivo-negativo pares))
           (positivos (length (remove -1 inclinacoes)))
           (negativos (length (remove 1 inclinacoes))))
         (list positivos negativos)))