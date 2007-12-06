(in-package #:goiaba)

;; funções relacionadas a elemento

(defun intervalo (elemento1 elemento2)
  "Subtrai o primeiro elemento do segundo."
  (- elemento2 elemento1))

(defun subtrair-elementos (a b)
  "Subtrai o segundo elemento do primeiro."
  (- a b))

(defun inverter-elemento (elemento eixo)
  "Faz inversão de um elemento em relação a um eixo dado."
  (- (* 2 eixo) elemento))

;; funções relacionadas a listas

(defun rotate (lista &optional (n 1))
  "Rotaciona uma lista a partir de um de seus elementos."
  (let ((modulo-n (mod n (length lista))))
    (append (subseq lista modulo-n) (subseq lista 0 modulo-n))))

(defun intervalos (lista)
  "Retorna os intervalos entre elementos de uma lista."
  (subseq (mapcar #'intervalo lista (rotate lista)) 0 (- (length lista) 1)))
  
(defun subtrair-lista-indice (lista indice)
  "Subtrai todos os elementos de uma lista de um índice."
  (mapcar #'(lambda (x) (subtrair-elementos x indice)) lista))

(defun inverter-lista (lista eixo)
  "Inverte os elementos de uma lista em torno de um eixo dado."
  (mapcar #'(lambda (elemento) (inverter-elemento elemento eixo)) lista))

(defun ponto-medio-lista (lista)
  "Retorna a média entre o maior e o menor valor de elementos de
uma lista."
  (let ((maior (apply #'max lista))
        (menor (apply #'min lista)))
    (/ (+ maior menor) 2)))

;; FIXME: fazer lidar com duracao
(defun rotaciona-lista (lista &optional (n 1))
  "Faz a rotação de elementos de uma lista"
  (let ((mod-n (mod n (length lista))))
    (append (subseq lista mod-n) (subseq lista 0 mod-n))))

;; funções relacionadas a pares

(defun ponto-medio-duracao (pares)
  "Retorna o ponto médio de um contorno em relação à duração."
  (let ((maior (first (sort (mapcar #'first pares) #'>)))
        (menor (first (sort (mapcar #'first pares) #'<))))
    (/ (+ maior menor) 2)))

(defun ponto-medio-altura (pares)
    "Retorna o ponto médio de um contorno em relação à altura."
  (let ((maior (first (sort (mapcar #'second pares) #'>)))
        (menor (first (sort (mapcar #'second pares) #'<))))
    (/ (+ maior menor) 2)))

(defun transpor-ponto (par fator)
  "Transpõe um ponto de um contorno a partir de um dado fator."
  (let ((x (first par))
        (y (second par)))
    (list x (+ y fator))))

(defun inverter-ponto (par eixo)
  "Inverte um ponto de um contorno em relação à altura a partir
de um dado eixo."
  (let ((x (first par))
        (y (second par)))
    (list x (- (* 2 eixo) y))))

(defun retrogradar-ponto (par eixo)
  "Inverte um ponto de um contorno em relação à duração a partir
de um dado eixo. Esta função é útil para retrogradar um contorno."
  (let ((x (first par))
        (y (second par)))
    (list (- (* 2 eixo) x) y)))

(defun aumentar-altura-ponto (par fator)
  "Multiplica a altura de um ponto por um dado fator."
  (let ((x (first par))
        (y (second par)))
    (list x (* y fator))))

(defun aumentar-duracao-ponto (par fator)
  "Multiplica a duração de um ponto por um dado fator."
  (let ((x (first par))
        (y (second par)))
    (list (* x fator) y)))

;; funções relacionadas a contornos

(defun transpor-contorno (pares fator)
  "Transpõe todos os pontos de um contorno a partir de um dado fator."
  (mapcar #'(lambda (par) (transpor-ponto par fator)) pares))

(defun inverter-contorno (pares eixo)
  "Inverte todos os pontos de um contorno em relação à altura a
partir de um dado eixo."
  (mapcar #'(lambda (par) (inverter-ponto par eixo)) pares))

(defun retrogradar-contorno (pares)
  "Retrograda um contorno. É o mesmo que inverter o contorno em
relação à duração a partir do seu ponto médio."
  (reverse
   (mapcar #'(lambda (par) (retrogradar-ponto par (ponto-medio-duracao pares))) pares)))

(defun aumentar-altura (pares fator)
  "Multiplica a altura de todos os pares de um contorno por um
dado fator."
  (mapcar #'(lambda (par) (aumentar-altura-ponto par fator)) pares))

;; FIXME: a abstracao da aumentacao de duracao esta errada
(defun aumentar-duracao (pares fator)
  "Multiplica a duração de um contorno por um dado fator."
  (mapcar #'(lambda (par) (aumentar-duracao-ponto par fator)) pares))

(defun rotar-contorno (pares fator)
  "Rotaciona um contorno a partir de um dado fator."
  (let* ((x-pares (mapcar #'first pares))
         (y-pares (mapcar #'second pares))
         (y-rotado (append (subseq y-pares fator) (subseq y-pares 0 fator))))
    (mapcar #'list x-pares y-rotado)))

(defun ordena-crescente-duracao (pares)
  "Ordena os pontos de um contorno de forma crescente a partir dos
valores de duração."
  (sort pares #'< :key #'first))

(defun insere-ponto (contorno par)
  "Insere um ponto em um contorno de um único segmento."
  (ordena-crescente-duracao (append (list (first contorno)) (list par) (list (second contorno)))))

(defun remover-duplicatas (pares)
  "Remove duplicatas de uma lista de pares e coloca em ordem
crescente a partir de x."
  (remove-duplicates pares :key #'first :from-end t))

(defun remover-alturas-repetidas (pares)
  "Remove os pontos de um contorno que têm alturas repetidas."
  (remove-duplicates pares :key #'second :from-end t))
