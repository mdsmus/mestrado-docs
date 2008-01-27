(in-package #:goiaba)

(defun remainder (n m)
  "Retorna o resto de uma divisão."
  (cond ((< n m) n)
        (t (remainder (- n m) m))))

(defun positivo-ou-negativo (numero)
  "Retorna 1 para positivo, -1 para negativo e 0 para 0."
    (if (zerop numero)
        0
        (/ numero (abs numero))))
