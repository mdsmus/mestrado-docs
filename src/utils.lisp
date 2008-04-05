(in-package #:goiaba)

(defun remainder (n m)
  "Retorna o resto de uma divisão."
  (second (multiple-value-list (floor n m))))

(defun positivo-ou-negativo (numero)
  "Retorna 1 para positivo, -1 para negativo e 0 para 0."
    (if (zerop numero)
        0
        (/ numero (abs numero))))

(defun concat (&rest string)
  "Concatena strings."
  (apply #'concatenate 'string string))

;;;; orientação a objetos

;; definição de classes

(defclass ponto ()
  ((pontos :accessor pontos :initarg :args)))

(defclass contorno-com-duracao ()
  ((pontos :accessor pontos :initarg :pontos)))

(defclass contorno-simples ()
  ((alturas :accessor alturas :initarg :alturas)
   (alturas-originais :accessor alturas-originais :initarg :alturas)))

(defclass matriz-de-comparacao ()
  ((args :accessor args :initarg :args)))

(defclass classe-de-contorno ()
  ((args :accessor args :initarg :args)))

(defclass contour-adjacency-series ()
  ((args :accessor args :initarg :args)))

;; definição de parâmetros

(defparameter ponto
  (make-instance 'ponto :args '(1 0 2)))

(defparameter contorno-com-duracao
  (make-instance 'contorno-com-duracao :pontos '((0 1) (0 0))))

(defparameter contorno-simples
  (make-instance 'contorno-simples :altura '(1 0 2)))

(defparameter matriz-de-comparacao
  (make-instance 'matriz-de-comparacao
                 :args '((0 -1 1 1)
                         (1 0 1 1)
                         (-1 -1 0 -1)
                         (-1 -1 1 0))))

(defparameter classe-de-contorno
  (make-instance 'classe-de-contorno :args '(1 0 2)))

(defparameter contour-adjacency-series
  (make-instance 'contour-adjacency-series :args '(1 0 2)))

;; make instance

(defun make-ponto (args)
  (make-instance 'ponto :pontos args))

(defun make-contorno-com-duracao (args)
  (make-instance 'contorno-com-duracao :pontos args))

(defun make-contorno-simples (args)
  (make-instance 'contorno-simples :alturas args))

(defun make-matriz-de-comparacao (args)
  (make-instance 'contorno-simples :args args))

(defun make-classe-de-contorno (args)
  (make-instance 'classe-de-contorno :args args))

(defun make-contour-adjacency-series (args)
  (make-instance 'contour-adjacency-series :args args))
