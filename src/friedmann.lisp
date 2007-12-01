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

(defun cia-aux (cc)
  "Conta as CI de um cc."
  (if (atom cc)
      cc
      (let ((primeiro (first cc)))
        (append (mapcar (lambda (item) (- item primeiro)) (rest cc))
                (cia-aux (rest cc))))))

(defun cia (cc)
  (let* ((lista (cia-aux cc))
         (max (apply #'max cc))
         (lista-negativa (remove-if #'plusp lista))
         (lista-positiva (remove-if #'minusp lista)))
    (list
     (loop for x from 1 to max
        collect (count x lista-positiva))
     (loop for x from -1 downto (- max)
        collect (count x lista-negativa)))))
