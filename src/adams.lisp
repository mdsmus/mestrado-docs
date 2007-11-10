(in-package #:contornos)

;; FIXME: remover repeticoes
(defun reduzir-contorno (pares)
  "reduz pontos de um contorno a ponto inicial, final, ponto mais
alto e mais baixo"
  (let* ((primeiro (first pares))
         (ultimo (first (reverse pares)))
         (mais-agudo (first (sort pares #'> :key #'second)))
         (mais-grave (first (sort pares #'< :key #'second))))
    (sort (list primeiro mais-agudo mais-grave ultimo) #'< :key #'first)))

;; (reduzir-contorno '((0 4) (1 5) (2 3) (3 1) (4 4) (5 9) (6 3) (7 2)))
