(defparameter *dir* "/tmp/")

(defun gnuplot (file)
  (run-program "/usr/bin/gnuplot" (list file)))

(defun contorno-plot (titulo png data out-file &optional (x1 0) (x2 10) (y1 0) (y2 10))
  (with-open-file (f out-file :direction :output :if-exists :supersede)
    (format f "set title \"~a\"
set terminal postscript eps enhanced
set ylabel \"altura\"
set xlabel \"tempo\"
set output \"~a.eps\"
set nokey
plot [~a:~a][~a:~a] '~a' with linespoints
pause -1 \"Hit return to continue\"" titulo png x1 x2 y1 y2 data)))

(defun contornos->file (contornos file)
  (with-open-file (f file :direction :output :if-exists :supersede)
    (format f "~{~{~a ~}~%~}" contornos)))

(defun ver (file)
  (run-program "/usr/bin/gv" (list (concat *dir* file ".eps"))))

(defun concat (&rest string)
  (apply #'concatenate 'string string))

(defun plot-contorno (contorno titulo arquivo &optional ver)
  (let ((tmp-file (format nil "/tmp/~a" (gensym)))
        (tmp-out (format nil "/tmp/~a" (gensym))))
    (contornos->file contorno tmp-file)
    (contorno-plot titulo (concat *dir* arquivo) tmp-file tmp-out)
    (gnuplot tmp-out)
    (if ver (ver arquivo))))

;; (defparameter *dir* "/tmp/")
;; (plot-contorno '((0 1) (3 4) (2 8)) "Contorno 1" "resultado")
;;(ver "resultado")
