(in-package #:goiaba)

;; FIXME: remover repeticoes
(defun reduzir-contorno (pares)
  "reduz pontos de um contorno a ponto inicial, final, ponto mais
alto e mais baixo"
  (let* ((primeiro (first pares))
         (ultimo (first (reverse pares)))
         (mais-agudo (first (sort pares #'> :key #'second)))
         (mais-grave (first (sort pares #'< :key #'second))))
    (remover-duplicatas (sort (list primeiro mais-agudo mais-grave ultimo) #'< :key #'first))))

(defun inclinacoes-contorno (pares)
  "retorna o valor de inclinacao entre todos os pares de um
contorno"
  (let* ((tamanho (length pares))
         (lista (mapcar #'second pares)))
    (subseq (mapcar #'(lambda (a b) (- a b)) (rotaciona-lista lista ) lista) 0 (- tamanho 1))))

(defun inclinacoes-contorno-positivo-negativo (pares)
  "retorna 1 e -1 para inclinacoes positivas e negativas"
  (mapcar #'(lambda (x) (if (= x 0) 0 (if (> x 1) 1 -1))) (inclinacoes-contorno pares)))
