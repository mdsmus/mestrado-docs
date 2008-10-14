#!/bin/bash

f=lily*-systems.tex
g=paginas-composicao.tex
l="  \linebreak"

sed '1,2 !d' $f > $f-new
echo $l >> $f-new
sed '4,8 !d' $f >> $f-new
echo $l \\vspace{20pt} >> $f-new
sed '10,$!d' $f | sed 's/includegraphics{/includegraphics{figs\//g' | sed 's/linebreak/linebreak\ \\vspace{22pt}/g' >> $f-new ; mv $f-new $f

sed '1,3 d' $g | sed '$ d' > $g-new ; mv $g-new $g

mv lily-*.eps figs 2> /dev/null

