(in-package #:goiaba)

(defun remainder (n m)
  (cond ((< n m) n)
        (t (remainder (- n m) m))))