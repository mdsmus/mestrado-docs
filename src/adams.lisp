(in-package #:goiaba)

;; FIXME: inserir recorrencia
(defun reducao-adams (pares)
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
    (subseq
     (mapcar #'(lambda (a b) (- a b)) (rotate lista) lista)
     0 (- tamanho 1))))

(defun inclinacoes-contorno-positivo-negativo (pares)
  "retorna 1 e -1 para inclinacoes positivas e
negativas. semelhante a contour adjacency series (cas), de
friedmann"
  (mapcar #'(lambda (inclinacao) (if (zerop inclinacao)
                                0
                                (/ inclinacao (abs inclinacao))))
          (inclinacoes-contorno pares)))
