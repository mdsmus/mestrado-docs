(in-package #:goiaba)
(defparameter *dir* "/tmp/")

(defun gnuplot (file)
  "Roda o gnuplot em um arquivo."
  (sb-ext:run-program "/usr/bin/gnuplot" (list file)))

(defun contorno-plot (titulo png data out-file &optional (x1 0) (x2 10) (y1 0) (y2 10))
  "Formata arquivo de plotagem."
  (with-open-file (f out-file :direction :output :if-exists :supersede)
    (format f "set title \"~a\"
set terminal postscript eps enhanced
set ylabel \"altura\"
set xlabel \"tempo\"
set output \"~a.eps\"
set grid
set nokey
plot [~a:~a][~a:~a] '~a' with linespoints lw 4
pause -1 \"Hit return to continue\"" titulo png x1 x2 y1 y2 data)))

(defun contornos->file (contornos file)
  "Envia contorno para arquivo de plotagem."
  (with-open-file (f file :direction :output :if-exists :supersede)
    (format f "~{~{~a ~}~%~}" contornos)))

(defun ver (file)
  (sb-ext:run-program "/usr/bin/gv" (list (concat *dir* file ".eps"))))

;;(defgeneric plot ((objeto contorno-com-duracao) &optional (filename "bar"))
;;  (:documentation "plota um objeto"))

(defmethod plot ((objeto contorno-com-duracao) &optional (filename "bar"))
  (let ((tmp-file (format nil "/tmp/~a" (gensym)))
        (tmp-out (format nil "/tmp/~a" (gensym)))
        (contorno (pontos objeto)))
    (contornos->file contorno tmp-file)
    (contorno-plot "foo"
                   (concat *dir* filename)
                   tmp-file
                   tmp-out
                   (menor-altura-contorno contorno #'first)
                   (maior-altura-contorno contorno #'first)
                   (menor-altura-contorno contorno)
                   (maior-altura-contorno contorno #'second))
    (gnuplot tmp-out)))

(defmethod plot ((objeto contorno-simples) &optional (filename "bar"))
  (plot (make-instance 'contorno-com-duracao :pontos
                       (contorno-simples->contorno-com-duracao (alturas objeto)))
        filename))

(defmethod plot-operacoes ((objeto contorno-simples))
  (plot (make-instance 'contorno-simples :alturas (inverter objeto)) "c1")
  (plot (make-instance 'contorno-simples :alturas (rotacionar objeto)) "c2")
  (plot (make-instance 'contorno-simples :alturas (retrogradar objeto)) "c3")
  (plot (make-instance 'contorno-simples :alturas (inverter (make-instance 'contorno-simples :alturas (retrogradar objeto))) "c4")
  )
  
(defun plot-contorno (contorno titulo arquivo &optional (x1 0) (x2 (- (length contorno) 1)) (y1 (menor-altura-contorno contorno)) (y2 (maior-altura-contorno contorno)))
  "Plota contorno em um arquivo dado."
  (let ((tmp-file (format nil "/tmp/~a" (gensym)))
        (tmp-out (format nil "/tmp/~a" (gensym))))
    (contornos->file contorno tmp-file)
    (contorno-plot titulo (concat *dir* arquivo) tmp-file tmp-out x1 x2 y1 y2)
    (gnuplot tmp-out)))

(defun gera-tex (files)
  "Formata arquivo \LaTeX."
  (print files)
  (with-open-file (file (concat *dir* "preview.tex") :direction :output :if-exists :supersede)
    (format file "\\documentclass[a4paper]{article}
\\usepackage[top=1cm,bottom=1cm,left=1cm,right=1cm]{geometry}
\\usepackage{graphicx}

\\setlength{\\parindent}{0cm}
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
  "Visualiza arquivos em um documento \LaTeX."
  (sb-posix:chdir (pathname *dir*))
  (gera-tex files)
  (sb-ext:run-program "/opt/texlive/bin/latex" (list "-interaction=nonstopmode" "preview.tex"))
  (sb-ext:run-program "/opt/texlive/bin/dvips" (list "preview.dvi"))
  (sb-ext:run-program "/usr/bin/gv" (list (concat *dir* "preview.ps"))))

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
