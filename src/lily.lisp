(in-package #:goiaba)

(defparameter *nome-de-nota* '(c c# d d# e f f# g g# a a# b))

(defun nota->numero (nota)
  (position (intern (string-upcase nota)) *nome-de-nota*))

(defun conta-acidentes (acidentes)
  (let ((s (count #\i acidentes))
        (b (count #\e acidentes)))
    (if (plusp s)
        s
        b)))

(defun oitava-absoluta (oitavas)
  (let ((up (count #\' oitavas))
        (down (count #\, oitavas)))
    (if (plusp up)
        (+ 3 up)
        (- 3 down))))

(defun parse-oitava (oitava)
  (* 12 (oitava-absoluta oitava)))

(defun parse-nota (nota)
  (cl-ppcre:register-groups-bind (nome acidente oitava dur)
      ("(c|d|e|f|g|a|b)([es|is]*)(['|,]*)(128|1|2|4|8|16|32|64)?" nota :sharedp t)
    (declare (ignore dur))
    (+ (nota->numero nome) (conta-acidentes acidente) (parse-oitava oitava))))

;; (mapcar #'parse-nota (cl-ppcre:split " " "c d e f g a b"))