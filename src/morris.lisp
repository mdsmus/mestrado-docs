(in-package #:goiaba)

(defun c-space (pares)
  "Numera as alturas de um contorno de 0 a n-1, sendo 0 o ponto mais
  grave e n-1 o mais agudo." )

(defun matriz-de-comparacao (c-space)
  "Retorna a matriz de comparacao de um contorno a partir de seu
c-space."
  (loop
     for y in c-space
     collect (loop
                for x in c-space
                collect (positivo-ou-negativo (- x y)))))

(defun inverte-matriz-de-comparacao (matriz-de-comparacao)
  "Retorna a inversão da matriz de comparação de um contorno."
  (loop
     for linha in matriz-de-comparacao
     collect (loop
                  for elemento in linha
                  collect (* -1 elemento))))
