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

(defun concat (&rest string)
  "Concatena strings."
  (apply #'concatenate 'string string))

;;;; orientação a objetos

;; definição de classes

(defclass ponto ()
    ((args :accessor args :initarg :args)))

(defclass contorno-com-duracao ()
  ((args :accessor args :initarg :args)))

(defclass contorno-simples ()
  ((args :accessor args :initarg :args)))

;; definição de parâmetros

(defparameter ponto
  (make-instance 'ponto :args '(1 0 2)))

(defparameter contorno-com-duracao
  (make-instance 'contorno-com-duracao :args '((0 1) (0 0))))

(defparameter contorno-simples
  (make-instance 'contorno-simples :args '(1 0 2)))

;; make instance

(defun make-ponto (args)
  (make-instance 'ponto :args args))

(defun make-contorno-com-duracao (args)
  (make-instance 'contorno-com-duracao :args args))

(defun make-contorno-simples (args)
  (make-instance 'contorno-simples :args args))
