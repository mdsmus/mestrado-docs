#!/bin/bash

figsdir=figs
file=paginas-composicao.tex
paginas=$(expr $(ls ${figsdir}/score-dissertacao* | wc -l) - 1)

rm $file 2> /dev/null
for f in $(seq 1 $paginas)
do
    echo \\includegraphics{score-dissertacao-$f}\\\\ >> $file
    echo >> $file
done