(in-package #:goiaba)

(defun cas (pares)
  "retorna a contour adjacency series de um contorno. o mesmo que
inclinacoes-contorno-positivo-negativo"
  (remove 0 (inclinacoes-contorno-positivo-negativo pares)))

(defun casv (cas)
  "retorna o vetor de contour adjacency series a partir de uma
cas"
  (let* ((positivos (length (remove -1 cas)))
           (negativos (length (remove 1 cas))))
         (list positivos negativos)))

(defun inverter-cas (cas)
  "inverte uma contour adjacency series"
  (mapcar #'(lambda (x) (* x -1)) cas))

(defun cc (pares)
  "retorna o valor de contour class de um contorno. o mesmo que
normalizacao de contorno"
  (let* ((pares-sorteados (sort (remover-alturas-repetidas pares) #'< :key #'second)))
    (mapcar #'second (sort (loop
         for (x y) in pares-sorteados
         for n from 0
         collect (list x n)) #'< :key #'first))))

(defun inverter-cc (cc)
  "retorna a inversao de uma contour class (CC)"
    (inverter-lista cc (ponto-medio-lista cc)))

(defun inclinacoes-cc (cc)
  "retorna o valor de inclinacao entre todos os elementos de uma cc"
  (let* ((tamanho (length cc)))
    (subseq
     (mapcar #'(lambda (a b) (- a b)) (rotaciona-lista cc) cc)
     0 (- tamanho 1))))

(defun cas-cc (cc)
    "retorna a cas de um contorno a partir de sua cc"
  (mapcar #'(lambda (inclinacao) (if (zerop inclinacao)
                                0
                                (/ inclinacao (abs inclinacao))))
          (inclinacoes-cc cc)))

(defun cis-cc (cc)
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

(defun ccv-aux (par)
  "retorna a soma de valores de um par de listas"
  (let* ((soma-positivo (apply #'+ (first par)))
         (soma-negativo (apply #'+ (second par))))
    (list soma-positivo soma-negativo)))

(defun ccvii (cc)
  "retorna a countour class vector ii (ccvii) de uma contour
class (cc)"
  (list (ccv-aux (cia cc))))

(defun ccvi (cc)
  "retorna a countour class vector i (ccvi) de uma contour
class (cc)"
  (let* ((cia (cia cc))
         (tamanho (length (first cia)))
         (primeiro (loop for
                      n from 0 to (- tamanho 1)
                      collect (* (1+ n)  (nth n (first cia)))))
         (segundo (loop for
                     n from 0 to (- tamanho 1)
                     collect (* (1+ n)  (nth n (second cia))))))
    (ccv-aux (list primeiro segundo))))
