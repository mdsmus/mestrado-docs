#!/bin/bash

figsdir=figs
file=paginas-composicao.tex
epsname=score-dissertacao
paginas=$(expr $(ls ${figsdir}/${epsname}* | wc -l) - 1)

rm $file 2> /dev/null
for f in $(seq 1 $paginas)
do
    echo \\includegraphics{${epsname}-$f}\\\\ >> $file
    echo >> $file
done