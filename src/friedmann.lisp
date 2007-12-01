(in-package #:goiaba)

(defun cas (pares)
  "retorna a contour adjacency series de um contorno. o mesmo que
inclinacoes-contorno-positivo-negativo"
  (inclinacoes-contorno-positivo-negativo pares))

(defun casv (cas)
  "retorna o vetor de contour adjacency series a partir de uma
cas"
  (let* ((positivos (length (remove -1 cas)))
           (negativos (length (remove 1 cas))))
         (list positivos negativos)))

(defun inverte-cas (cas)
  "inverte uma contour adjacency series"
  (mapcar #'(lambda (x) (* x -1)) cas))

(defun contour-class (pares)
  "retorna o valor de contour class de um contorno. o mesmo que
normalizacao de contorno"
  (let* ((pares-sorteados (sort (remover-alturas-repetidas pares) #'< :key #'second)))
    (mapcar #'second (sort (loop
         for (x y) in pares-sorteados
         for n from 0
         collect (list x n)) #'< :key #'first))))

(defun contour-interval-sucession (cc)
  "retorna os intervalos de contorno (CI) de uma contour class (CC)"
  (intervalos cc))

(defun cia-aux (cc)
  "conta os intervalos de contorno (CI) de uma contour
class (CC)"
  (if (atom cc)
      cc
      (let ((primeiro (first cc)))
        (append (mapcar (lambda (item) (- item primeiro)) (rest cc))
                (cia-aux (rest cc))))))

(defun cia (cc)
  "retorna a contour interval array (CIA) de uma contour
class (CC)"
  (let* ((lista (cia-aux cc))
         (max (apply #'max cc))
         (lista-negativa (remove-if #'plusp lista))
         (lista-positiva (remove-if #'minusp lista)))
    (list
     (loop for x from 1 to max
        collect (count x lista-positiva))
     (loop for x from -1 downto (- max)
        collect (count x lista-negativa)))))
