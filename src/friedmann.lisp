(in-package #:goiaba)

(defun cas (contorno-com-duracao)
  "Retorna a Contour Adjacency Series (CAS) de um
contorno. Diferente da função
inclinacoes-contorno-positivo-negativo, as inclinações nulas são
ignoradas."
  (remove 0 (inclinacoes-contorno-positivo-negativo contorno-com-duracao)))

(defun casv (cas)
  "Retorna o Contour Adjacency Series Vector (CASV) de uma
Contour Adjacency Series (CAS)."
  (let* ((positivos (length (remove -1 cas)))
           (negativos (length (remove 1 cas))))
         (list positivos negativos)))

(defun inverter-cas (cas)
  "Inverte uma Contour Adjacency Series (CAS)."
  (mapcar #'(lambda (x) (* x -1)) cas))

(defun cc (pontos)
  "Retorna o valor da classe de contorno (Contour Class) de um
contorno. É o mesmo que normalização de contorno. Morris
\cite{morris93:_new_direc_theor_analy_music_contour} chama de
espaço de contorno (Contour Space ou c-space)."
  (let* ((pontos-do-contorno (sort (remover-alturas-repetidas pontos) #'< :key #'second)))
    (mapcar #'second (sort (loop
         for (x y) in pontos-do-contorno
         for n from 0
         collect (list x n)) #'< :key #'first))))

(defun inverter-cc (cc)
  "Inverte uma Contour Class (CC)."
    (inverter-lista cc (ponto-medio-lista cc)))

(defun cis-cc (cc)
  "Retorna os Contour Interval (CI) de uma Contour Class (CC)."
  (intervalos cc))

(defun cas-cc (cc)
  "Retorna a Contour Adjacency Series (CAS) de um contorno a
partir de sua Contour Class (CC)."
  (mapcar #'(lambda (inclinacao) (positivo-ou-negativo inclinacao))
          (cis-cc cc)))

(defun cia-aux (cc)
  "Conta os Contour Interval (CI) de uma Contour Class (CC)."
  (if (atom cc)
      cc
      (let ((primeiro (first cc)))
        (append (mapcar (lambda (item) (- item primeiro)) (rest cc))
                (cia-aux (rest cc))))))

(defun cia (cc)
  "Retorna a Contour Interval Array (CIA) de uma Contour
Class (CC)."
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
  "Retorna a soma de valores de um par de listas."
  (let* ((soma-positivo (apply #'+ (first par)))
         (soma-negativo (apply #'+ (second par))))
    (list soma-positivo soma-negativo)))

(defun ccvii (cc)
    "Retorna o Countour Class Vector II (CCVII) de uma Contour
Class (cc)."
  (list (ccv-aux (cia cc))))

(defun ccvi (cc)
  "Retorna o Countour Class Vector I (CCVI) de uma Contour
Class (cc)."
  (let* ((cia (cia cc))
         (tamanho (length (first cia)))
         (primeiro (loop for
                      n from 0 to (- tamanho 1)
                      collect (* (1+ n)  (nth n (first cia)))))
         (segundo (loop for
                     n from 0 to (- tamanho 1)
                     collect (* (1+ n)  (nth n (second cia))))))
    (ccv-aux (list primeiro segundo))))

;;;;;;;;;;;;;
;;;;;;;;;;;;; orientação a objetos
;;;;;;;;;;;;;

(defmethod cc-orient-objetos ((objeto contorno-com-duracao))
  "Retorna o valor da classe de contorno (Contour Class) de um
contorno. É o mesmo que normalização de contorno. Morris
\cite{morris93:_new_direc_theor_analy_music_contour} chama de
espaço de contorno (Contour Space ou c-space)."
  (let* ((pontos-do-contorno (sort (remover-alturas-repetidas (args objeto)) #'< :key #'second)))
    (mapcar #'second (sort (loop
         for (x y) in pontos-do-contorno
         for n from 0
         collect (list x n)) #'< :key #'first))))

(defmethod cc-orient-objetos ((objeto contorno-simples))
  (cc-orient-objetos
   (make-contorno-com-duracao
    (contorno-simples->contorno-com-duracao (args objeto)))))

(defmethod cas-orient-objetos ((objeto contorno-com-duracao))
  "Retorna a Contour Adjacency Series (CAS) de um
contorno. Diferente da função
inclinacoes-contorno-positivo-negativo, as inclinações nulas são
ignoradas."
  (remove 0
          (inclinacoes-contorno-positivo-negativo
           (args objeto))))

(defmethod cas-orient-objetos ((objeto contorno-simples))
  "Retorna a Contour Adjacency Series (CAS) de um
contorno. Diferente da função
inclinacoes-contorno-positivo-negativo, as inclinações nulas são
ignoradas."
  (remove 0
          (inclinacoes-contorno-positivo-negativo
           (contorno-simples->contorno-com-duracao (args objeto)))))

(defmethod cis-orient-objetos ((objeto classe-de-contorno))
  "Retorna os Contour Interval (CI) de uma Contour Class (CC)."
  (intervalos (args objeto)))

(defmethod cis-orient-objetos ((objeto contorno-simples))
  "Retorna os Contour Interval (CI) de um contorno simples."
  (intervalos (cc-orient-objetos (make-contorno-simples (args objeto)))))

(defmethod cis-orient-objetos ((objeto contorno-com-duracao))
  "Retorna os Contour Interval (CI) de um contorno com duração."
  (intervalos (cc-orient-objetos (make-contorno-com-duracao (args objeto)))))

(defmethod casv-orient-objetos ((objeto contour-adjacency-series))
  "Retorna o Contour Adjacency Series Vector (CASV) de um contorno com
duração."
  (let* ((positivos (length (remove -1 (args contour-adjacency-series))))
         (negativos (length (remove 1 (args contour-adjacency-series)))))
    (list positivos negativos)))

(defmethod casv-orient-objetos ((objeto contorno-com-duracao))
  "Retorna o Contour Adjacency Series Vector (CASV) de um contorno com
duração."
  (let* ((cas (cas-orient-objetos (make-contorno-com-duracao (args objeto))))
         (positivos (length (remove -1 cas)))
         (negativos (length (remove 1 cas))))
    (list positivos negativos)))

(defmethod casv-orient-objetos ((objeto contorno-simples))
  "Retorna o Contour Adjacency Series Vector (CASV) de um contorno
simples."
  (let* ((cas (cas-orient-objetos (make-contorno-simples (args objeto))))
         (positivos (length (remove -1 cas)))
         (negativos (length (remove 1 cas))))
    (list positivos negativos)))

(defmethod cia-orient-objetos ((objeto classe-de-contorno))
  "Retorna a Contour Interval Array (CIA) de uma Contour
Class (CC)."
  (let* ((lista (cia-aux (args objeto)))
         (max (apply #'max (args objeto)))
         (lista-negativa (remove-if #'plusp lista))
         (lista-positiva (remove-if #'minusp lista)))
    (list
     (loop for x from 1 to max
        collect (count x lista-positiva))
     (loop for x from -1 downto (- max)
        collect (count x lista-negativa)))))

(defmethod cia-orient-objetos ((objeto contorno-simples))
  "Retorna a Contour Interval Array (CIA) a partir de um contorno
simples."
  (cia-orient-objetos (make-classe-de-contorno (cc-orient-objetos (make-contorno-simples (args
  objeto))))))

(defmethod cia-orient-objetos ((objeto contorno-com-duracao))
  "Retorna a Contour Interval Array (CIA) a partir de um contorno
simples."
  (cia-orient-objetos (make-classe-de-contorno (cc-orient-objetos (make-contorno-com-duracao (args
  objeto))))))

(defmethod ccvii-orient-objetos ((objeto classe-de-contorno))
  "Retorna o Countour Class Vector II (CCVII) de uma Contour
Class (cc)."
  (ccv-aux (cia-orient-objetos (make-classe-de-contorno (args objeto)))))

(defmethod ccvii-orient-objetos ((objeto contorno-simples))
  "Retorna o Countour Class Vector II (CCVII) de um contorno simples."
  (ccv-aux (cia-orient-objetos (make-contorno-simples (args objeto)))))

(defmethod ccvii-orient-objetos ((objeto contorno-com-duracao))
  "Retorna o Countour Class Vector II (CCVII) de um contorno com
duração."
  (ccv-aux (cia-orient-objetos (make-contorno-com-duracao (args objeto)))))

(defmethod ccvi-orient-objetos ((objeto classe-de-contorno))
  "Retorna o Countour Class Vector I (CCVI) de uma Contour
Class (cc)."
  (let* ((cia (cia-orient-objetos (make-classe-de-contorno (args objeto))))
         (tamanho (length (first cia)))
         (primeiro (loop for
                      n from 0 to (- tamanho 1)
                      collect (* (1+ n)  (nth n (first cia)))))
         (segundo (loop for
                     n from 0 to (- tamanho 1)
                     collect (* (1+ n)  (nth n (second cia))))))
    (ccv-aux (list primeiro segundo))))

(defmethod ccvi-orient-objetos ((objeto contorno-simples))
  "Retorna o Countour Class Vector I (CCVI) de um contorno simples."
  (let* ((cia (cia-orient-objetos (make-contorno-simples (args classe-de-contorno))))
         (tamanho (length (first cia)))
         (primeiro (loop for
                      n from 0 to (- tamanho 1)
                      collect (* (1+ n)  (nth n (first cia)))))
         (segundo (loop for
                     n from 0 to (- tamanho 1)
                     collect (* (1+ n)  (nth n (second cia))))))
    (ccv-aux (list primeiro segundo))))

(defmethod ccvi-orient-objetos ((objeto contorno-com-duracao))
  "Retorna o Countour Class Vector I (CCVI) de um contorno com
duração."
  (let* ((cia (cia-orient-objetos (make-contorno-com-duracao (args classe-de-contorno))))
         (tamanho (length (first cia)))
         (primeiro (loop for
                      n from 0 to (- tamanho 1)
                      collect (* (1+ n)  (nth n (first cia)))))
         (segundo (loop for
                     n from 0 to (- tamanho 1)
                     collect (* (1+ n)  (nth n (second cia))))))
    (ccv-aux (list primeiro segundo))))
