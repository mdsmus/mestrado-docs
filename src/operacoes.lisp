(in-package #:goiaba)

(defun retrogradar-pares (pares)
  "mostra os pares em ordem reversa"
  (reverse pares))

(defun ponto-medio-x (pares)
  "retorna o ponto medio de um contorno - x"
  (let ((primeiro (first (first pares)))
        (ultimo (first (first (last pares)))))
    (+ primeiro (/ (- ultimo primeiro) 2))))

(defun ponto-medio-y (pares)
    "retorna o ponto medio de um contorno - y"
  (let ((primeiro (second (first pares)))
        (ultimo (second (first (last pares)))))
    (+ primeiro (/ (- ultimo primeiro) 2))))

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
  (append (subseq pares fator) (subseq pares 0 fator)))

(defun ordena-crescente-x (pares)
  "Ordena pares de um contorno de forma crescente a partir dos
valores de x"
  (sort pares #'< :key #'first))

(defun insere-ponto (contorno par)
  "Insere um par no 'meio' de um contorno de um único segmento."
  (ordena-crescente-x (append (list (first contorno)) (list par) (list (second contorno)))))
