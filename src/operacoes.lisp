(in-package #:goiaba)

;; funções relacionadas a elemento

(defun intervalo (elemento1 elemento2)
  "retorna a diferenca entre elementos"
   (- elemento2 elemento1))

(defun subtrair-elementos (a b)
  (- a b))

(defun inverter-elemento (elemento eixo)
  (- (* 2 eixo) elemento))

;; funções relacionadas a listas

(defun rotate (lista &optional (n 1))
  (let ((modn (mod n (length lista))))
    (append (subseq lista modn) (subseq lista 0 modn))))

(defun intervalos (lista)
  "retorna os intervalos entre elementos de uma lista"
  (subseq (mapcar #'intervalo lista (rotate lista)) 0 (- (length lista) 1)))
  
(defun subtrai-lista-indice (lista indice)
  (mapcar #'(lambda (x) (subtrair-elementos x indice)) lista))

(defun inverter-lista (lista eixo)
  (mapcar #'(lambda (elemento) (inverter-elemento elemento eixo)) lista))

(defun ponto-medio-lista (lista)
  "retorna o ponto médio de uma lista (média aritmética)"
  (let ((maior (apply #'max lista))
        (menor (apply #'min lista)))
    (/ (+ maior menor) 2)))

;; funções relacionadas a pares

(defun ponto-medio-x (pares)
  "retorna o ponto medio de um contorno - x"
  (let ((maior (first (sort (mapcar #'first pares) #'>)))
        (menor (first (sort (mapcar #'first pares) #'<))))
    (/ (+ maior menor) 2)))

(defun ponto-medio-y (pares)
    "retorna o ponto medio de um contorno - y"
  (let ((maior (first (sort (mapcar #'second pares) #'>)))
        (menor (first (sort (mapcar #'second pares) #'<))))
    (/ (+ maior menor) 2)))

(defun transpor-ponto (par fator)
  "transpoe um ponto de um contorno"
  (let ((x (first par))
        (y (second par)))
    (list x (+ y fator))))

(defun inverter-ponto (par eixo)
  "inverte um ponto de contorno"
  (let ((x (first par))
        (y (second par)))
    (list x (- (* 2 eixo) y))))

(defun retrogradar-ponto (par eixo)
  "retrograda as pontos de um contorno"
  (let ((x (first par))
        (y (second par)))
    (list (- (* 2 eixo) x) y)))

(defun aumentar-altura-ponto (par fator)
  "aumenta a altura de um ponto por multiplicacao por fator"
  (let ((x (first par))
        (y (second par)))
    (list x (* y fator))))

;; FIXME: a abstracao da aumentacao de duracao esta errada
(defun aumentar-duracao-ponto (par fator)
  "aumenta a duracao de um ponto por multiplicacao por fator"
  (let ((x (first par))
        (y (second par)))
    (list (* x fator) y)))

;; funções relacionadas a contornos

(defun transpor-contorno (pares fator)
  "transpoe todas as pontos de um contorno"
  (mapcar #'(lambda (par) (transpor-ponto par fator)) pares))

(defun inverter-contorno (pares eixo)
  "inverte todas as pontos de um contorno"
  (mapcar #'(lambda (par) (inverter-ponto par eixo)) pares))

(defun retrogradar-contorno (pares)
  "retrograda um contorno"
  (reverse
   (mapcar #'(lambda (par) (retrogradar-ponto par (ponto-medio-x pares))) pares)))

(defun aumentar-altura (pares fator)
  "aumenta a altura de um contorno por multiplicacao por fator"
  (mapcar #'(lambda (par) (aumentar-altura-ponto par fator)) pares))

(defun aumentar-duracao (pares fator)
  "aumenta a duracao de um contorno por multiplicacao por fator"
  (mapcar #'(lambda (par) (aumentar-duracao-ponto par fator)) pares))

(defun rotar-contorno (pares fator)
  "rotaciona contorno a partir de um dado fator"
  (let* ((x-pares (mapcar #'first pares))
         (y-pares (mapcar #'second pares))
         (y-rotado (append (subseq y-pares fator) (subseq y-pares 0 fator))))
    (mapcar #'list x-pares y-rotado)))

(defun ordena-crescente-x (pares)
  "Ordena pares de um contorno de forma crescente a partir dos
valores de x"
  (sort pares #'< :key #'first))

(defun insere-ponto (contorno par)
  "Insere um par no 'meio' de um contorno de um único segmento."
  (ordena-crescente-x (append (list (first contorno)) (list par) (list (second contorno)))))

;; FIXME: fazer lidar com duracao
(defun rotaciona-lista (lista &optional (n 1))
  "Faz a rotação de elementos de uma lista"
  (let ((mod-n (mod n (length lista))))
    (append (subseq lista mod-n) (subseq lista 0 mod-n))))

(defun remover-duplicatas (pares)
  "remove duplicatas de uma lista de pares e coloca em ordem
crescente a partir de x"
  (remove-duplicates pares :key #'first :from-end t))

(defun remover-alturas-repetidas (pares)
  "remove os pontos que tem alturas repetidas"
  (remove-duplicates pares :key #'second :from-end t))
