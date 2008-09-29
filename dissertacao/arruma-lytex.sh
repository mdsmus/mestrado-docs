#!/bin/bash

f=lily*-systems.tex
g=paginas-composicao.tex
cat $f | sed 's/includegraphics{/includegraphics{figs\//g' | sed 's/linebreak/linebreak\ \\vspace{36pt}/g' > $f-new ; mv $f-new $f
sed '1,3 d' $g | sed '$ d' > $g-new ; mv $g-new $g
mv lily-*.eps figs
