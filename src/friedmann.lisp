(in-package #:goiaba)

(defun vetor-cas (pares)
  "retorna o vetor de contour adjacency series"
  (let* ((inclinacoes (inclinacoes-contorno-positivo-negativo pares))
           (positivos (length (remove -1 inclinacoes)))
           (negativos (length (remove 1 inclinacoes))))
         (list positivos negativos)))

(defun contour-class (pares)
  "retorna o valor de contour class de um contorno"
  (let* ((pares-sorteados (sort (remover-alturas-repetidas pares) #'< :key #'second)))
    (mapcar #'second (sort (loop
         for (x y) in pares-sorteados
         for n from 0
         collect (list x n)) #'< :key #'first))))

(defun contour-interval (pares)
  "retorna os intervalos de uma contour class"
  (intervalos (contour-class pares)))