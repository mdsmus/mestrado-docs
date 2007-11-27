(in-package #:goiaba)

(defun vetor-cas (pares)
  "retorna o vetor de contour adjacency series"
  (let* ((inclinacoes (inclinacoes-contorno-positivo-negativo pares))
           (positivos (length (remove -1 inclinacoes)))
           (negativos (length (remove 1 inclinacoes))))
         (list positivos negativos)))

(defun contour-class (pares)
  (let* ((pares-sorteados (sort pares #'< :key #'second)))
    (mapcar #'second (sort (loop
         for (x y) in pares-sorteados
         for n from 0
         collect (list x n)) #'< :key #'first))))

