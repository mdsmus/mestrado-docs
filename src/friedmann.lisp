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
