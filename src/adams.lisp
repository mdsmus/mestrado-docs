(in-package #:contornos)

;; FIXME: inserir pontos mais alto e mais baixo
(defun reduzir-contorno (pares)
  "reduz pontos de um contorno a ponto inicial, final, ponto mais
alto e mais baixo"
  (list (first pares) (last pares)))

;; teste
;; (reduzir-contorno '((0 4) (1 5) (2 3) (3 1) (4 4) (5 9) (6 3) (7 2)))