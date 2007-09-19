(defun transpor-borda (par fator)
  ;; transpoe uma borda de um contorno
  (let ((x (first par))
        (y (second par)))
    (list x (+ y fator))))

(defun transpor-contorno (pares fator)
  ;; transpoe todas as bordas de um contorno
  (mapcar #'(lambda (par) (transpor-borda par fator)) pares))

(defun inverter-borda (par eixo)
  ;; inverte uma borda de contorno
  (let ((x (first par))
        (y (second par)))
    (list x (- (* 2 eixo) y))))

(defun inverter-contorno (pares eixo)
  ;; inverte todas as bordas de um contorno
  (mapcar #'(lambda (par) (inverter-borda par eixo)) pares))

;; FIXME: a abstracao da retrogradacao esta errada
(defun retrogradar-contorno (pares)
  ;; retrograda as bordas de um contorno
  (reverse pares))

(defun aumentar-altura-borda (par fator)
  ;; aumenta a altura de uma borda por multiplicacao por fator
  (let ((x (first par))
        (y (second par)))
    (list x (* y fator))))

(defun aumentar-altura (pares fator)
  ;; aumenta a altura de um contorno por multiplicacao por fator
  (mapcar #'(lambda (par) (aumentar-altura-borda par fator)) pares))

;; FIXME: a abstracao da aumentacao de duracao esta errada
(defun aumentar-duracao-borda (par fator)
  ;; aumenta a duracao de uma borda por multiplicacao por fator
  (let ((x (first par))
        (y (second par)))
    (list (* x fator) y)))

(defun aumentar-duracao (pares fator)
  ;; aumenta a duracao de um contorno por multiplicacao por fator
  (mapcar #'(lambda (par) (aumentar-duracao-borda par fator)) pares))

(defun rotar-contorno (pares fator)
  ;; rotaciona contorno a partir de um dado fator
  (append (subseq pares fator) (subseq pares 0 fator)))

;; testes

;; (transpor-contorno '((1 1)(2 4)(5 3)(7 5)) 1)
;; (inverter-contorno '((1 1)(2 4)(5 3)(7 5)) 0)
;; (retrogradar-contorno '((1 1)(2 4)(5 3)(7 5)))
;; (aumentar-altura '((1 1)(2 4)(5 3)(7 5)) 2)
;; (aumentar-duracao '((1 1)(2 4)(5 3)(7 5)) 2)
;; (rotar-contorno '((1 1)(2 4)(5 3)(7 5)) 2)