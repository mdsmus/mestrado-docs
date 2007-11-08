(in-package #:contornos)
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

(defun plot-contorno (contorno titulo arquivo &optional (x1 0) (x2 10) (y1 0) (y2 10))
  (let ((tmp-file (format nil "/tmp/~a" (gensym)))
        (tmp-out (format nil "/tmp/~a" (gensym))))
    (contornos->file contorno tmp-file)
    (contorno-plot titulo (concat *dir* arquivo) tmp-file tmp-out x1 x2 y1 y2)
    (gnuplot tmp-out)))

(defun gera-tex (files)
  (print files)
  (with-open-file (file (concat *dir* "preview.tex") :direction :output :if-exists :supersede)
    (format file "\\documentclass[a4paper]{article}
\\usepackage[top=1cm,bottom=1cm,left=1cm,right=1cm]{geometry}
\\usepackage{graphicx}

\\begin{document}
")
    (loop
       for x from 0 to (1- (length files)) by 2
       for item = (nth x files)
       for next-item = (nth (1+ x) files)
       do
         (format file "\\includegraphics[scale=.7]{~a}~%" item)
         (when next-item
           (format file "\\includegraphics[scale=.7]{~a}\\\\~%" next-item)))
    
    (format file "\\end{document}")))

(defun preview (&rest files)
  (sb-posix:chdir (pathname *dir*))
  (gera-tex files)
  (run-program "/usr/bin/latex" (list "-interaction=nonstopmode" "preview.tex"))
  (run-program "/usr/bin/dvips" (list "preview.dvi"))
  (run-program "/usr/bin/gv" (list (concat *dir* "preview.ps"))))

(defun plist-keys (plist)
  (loop for x from 0 to (1- (length plist)) by 2 collect
       (nth x plist)))

(defun preview-all (contorno funcoes-alist)
  (plot-contorno contorno "CONTORNO" "0")
  (apply #'preview
         (append (list 0)
                 (loop
                    with funcoes = (plist-keys funcoes-alist)
                    for funcao in funcoes
                    for par = (getf funcoes-alist funcao)
                    for x from 1 to (length funcoes) do
                      (plot-contorno (apply funcao contorno (if (listp par) par (list par)))
                                     (symbol-name funcao)
                                     (write-to-string x))
                    collect x))))

(defun preview-all-short (contorno transpor retrogrado inverter aum-altura aum-duracao rotar)
  (preview-all contorno
               `(transpor-contorno ,transpor
                 retrogradar-contorno ,retrogrado
                 inverter-contorno ,inverter
                 aumentar-altura ,aum-altura
                 aumentar-duracao ,aum-duracao
                 rotar-contorno ,rotar)))

;;(retrogradar-contorno)
#|
    (plot-contorno contorno "contorno" "t0")
    (plot-contorno (transpor-contorno contorno 1) "transposição" "t1")
    (plot-contorno (inverter-contorno contorno 0) "inversão" "t2" 0 10 10 -10)
    (plot-contorno (retrogradar-contorno contorno) "retrogado" "t3")
    (plot-contorno (aumentar-altura contorno 2) "aumenta altura" "t4")
    (plot-contorno (aumentar-duracao contorno 2) "aumenta duração" "t5")
    (plot-contorno (rotar-contorno contorno 2) "rotar" "t6"))
|#

;; (defparameter *dir* "/tmp/")
;; (plot-contorno '((0 1) (3 4) (2 8)) "Contorno 1" "resultado")
;;(ver "resultado")
