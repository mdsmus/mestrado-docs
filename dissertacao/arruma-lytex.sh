#!/bin/bash

f=lily*-systems.tex
g=paginas-composicao.tex
sed 's/includegraphics{/includegraphics{figs\//g' $f > $f-new ; mv $f-new $f
sed '1,3 d' $g | sed '$ d' > $g-new ; mv $g-new $g
mv lily-*.eps figs
