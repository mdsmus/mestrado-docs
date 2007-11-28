(in-package #:goiaba)

(defun retrogradar-pares (pares)
  "mostra os pares em ordem reversa"
  (reverse pares))

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

(defun transpor-contorno (pares fator)
  "transpoe todas as pontos de um contorno"
  (mapcar #'(lambda (par) (transpor-ponto par fator)) pares))

(defun inverter-ponto (par eixo)
  "inverte um ponto de contorno"
  (let ((x (first par))
        (y (second par)))
    (list x (- (* 2 eixo) y))))

(defun inverter-contorno (pares eixo)
  "inverte todas as pontos de um contorno"
  (mapcar #'(lambda (par) (inverter-ponto par eixo)) pares))

(defun retrogradar-ponto (par eixo)
  "retrograda as pontos de um contorno"
  (let ((x (first par))
        (y (second par)))
    (list (- (* 2 eixo) x) y)))

(defun retrogradar-contorno (pares)
  "retrograda um contorno"
  (retrogradar-pares
   (mapcar #'(lambda (par) (retrogradar-ponto par (ponto-medio-x pares))) pares)))

(defun aumentar-altura-ponto (par fator)
  "aumenta a altura de um ponto por multiplicacao por fator"
  (let ((x (first par))
        (y (second par)))
    (list x (* y fator))))

(defun aumentar-altura (pares fator)
  "aumenta a altura de um contorno por multiplicacao por fator"
  (mapcar #'(lambda (par) (aumentar-altura-ponto par fator)) pares))

;; FIXME: a abstracao da aumentacao de duracao esta errada
(defun aumentar-duracao-ponto (par fator)
  "aumenta a duracao de um ponto por multiplicacao por fator"
  (let ((x (first par))
        (y (second par)))
    (list (* x fator) y)))

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

(defun rotate (conjunto &optional (n 1))
  (let ((modn (mod n (length conjunto))))
    (append (subseq conjunto modn) (subseq conjunto 0 modn))))

(defun intervalo (membro1 membro2)
  "retorna a diferenca entre membros"
   (- membro2 membro1))

(defun intervalos (pares)
  "retorna os intervalos entre membros de uma lista"
  (subseq (mapcar #'intervalo pares (rotate pares)) 0 (- (length pares) 1)))

(defun subtrai-membros (a b)
  (- a b))
  
(defun subtrai-lista-indice (lista indice)
  (mapcar #'(lambda (x) (subtrai-membros x indice)) lista))

(defun matriz (serie)
  (mapcar #'(lambda (nota) (transpor serie nota)) serie))