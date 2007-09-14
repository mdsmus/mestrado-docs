(defun gnuplot (file)
  (run-program "/usr/bin/gnuplot" (list file)))

(defun contorno-plot (titulo png data &optional (x1 0) (x2 10) (y1 0) (y2 10))
  (with-open-file (f "/tmp/bar" :direction :output :if-exists :supersede)
    (format f "set title \"~a\"
set terminal postscript eps enhanced
set xlabel \"altura\"
set ylabel \"tempo\"
set output \"~a.eps\"
set nokey
plot [~a:~a][~a:~a] '~a' with linespoints
pause -1 \"Hit return to continue\"" titulo png x1 x2 y1 y2 data)))

(defun contornos->file (contornos file)
  (with-open-file (f file :direction :output :if-exists :supersede)
    (format f "~{~{~a ~}~%~}" contornos)))

(defun ver (file)
  (run-program "/usr/bin/gv" (list file)))

(contornos->file '((1 2) (2 3) (3 4)) "/tmp/foo")
(contorno-plot "foo" "/tmp/resultado" "/tmp/foo")
(gnuplot "/tmp/bar")
(ver "/tmp/resultado.eps")
