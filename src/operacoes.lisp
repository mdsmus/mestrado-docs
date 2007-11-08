(in-package #:contornos)

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

(defun transpor-borda (par fator)
  "transpoe uma borda de um contorno"
  (let ((x (first par))
        (y (second par)))
    (list x (+ y fator))))

(defun transpor-contorno (pares fator)
  "transpoe todas as bordas de um contorno"
  (mapcar #'(lambda (par) (transpor-borda par fator)) pares))

(defun inverter-borda (par eixo)
  "inverte uma borda de contorno"
  (let ((x (first par))
        (y (second par)))
    (list x (- (* 2 eixo) y))))

(defun inverter-contorno (pares eixo)
  "inverte todas as bordas de um contorno"
  (mapcar #'(lambda (par) (inverter-borda par eixo)) pares))

(defun retrogradar-borda (par eixo)
  "retrograda as bordas de um contorno"
  (let ((x (first par))
        (y (second par)))
    (list (- (* 2 eixo) x) y)))

(defun retrogradar-contorno (pares)
  "retrograda um contorno"
  (retrogradar-pares
   (mapcar #'(lambda (par) (retrogradar-borda par (ponto-medio-x pares))) pares)))

(defun aumentar-altura-borda (par fator)
  "aumenta a altura de uma borda por multiplicacao por fator"
  (let ((x (first par))
        (y (second par)))
    (list x (* y fator))))

(defun aumentar-altura (pares fator)
  "aumenta a altura de um contorno por multiplicacao por fator"
  (mapcar #'(lambda (par) (aumentar-altura-borda par fator)) pares))

;; FIXME: a abstracao da aumentacao de duracao esta errada
(defun aumentar-duracao-borda (par fator)
  "aumenta a duracao de uma borda por multiplicacao por fator"
  (let ((x (first par))
        (y (second par)))
    (list (* x fator) y)))

(defun aumentar-duracao (pares fator)
  "aumenta a duracao de um contorno por multiplicacao por fator"
  (mapcar #'(lambda (par) (aumentar-duracao-borda par fator)) pares))

(defun rotar-contorno (pares fator)
  "rotaciona contorno a partir de um dado fator"
  (append (subseq pares fator) (subseq pares 0 fator)))

(defun insere-ponto (contorno par)
  "Insere um par no 'meio' de um contorno de um único segmento."
  (append (list (first contorno)) (list par) (list (second contorno))))

;; testes

;; (retrogradar-borda '(0 4) 2)
;; (transpor-contorno '((1 1)(2 4)(5 3)(7 5)) 1)
;; (inverter-contorno '((1 1)(2 4)(5 3)(7 5)) 0)
;; (retrogradar-contorno '((1 1)(2 4)(5 3)(7 5)))
;; (aumentar-altura '((1 1)(2 4)(5 3)(7 5)) 2)
;; (aumentar-duracao '((1 1)(2 4)(5 3)(7 5)) 2)
;; (rotar-contorno '((1 1)(2 4)(5 3)(7 5)) 2)
;; (ponto-medio-x '((1 1)(2 4)(5 3)(7 5)))
;; (ponto-medio-y '((1 1)(2 4)(5 3)(7 5)))
