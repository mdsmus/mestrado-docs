#!/bin/bash

lbdir=lbook
dirclily=$(ls -l ${lbdir} | grep ^d | awk '{print $9}')
letras=$(grep --color lily ${lbdir}/snippet-names* | awk -F '-' '{print $2}' | awk -F '.' '{print $1}')
texfile=paginas-composicao.tex
systemnumbers=$(tac $lbdir/$dirclily/lily-${letras}-systems.tex | head -n 1 | awk -F '-' '{print $3}' | awk -F '}' '{print $1}')

function cria-texfile {
    rm ${texfile} 2> /dev/null
    for i in $(seq 1 $systemnumbers)
    do
        echo "\includegraphics{lily-score-$i}  \linebreak \vspace{2em}" >> ${texfile}
    done
}

function renomeia-e-move-lily {
    cd $lbdir/$dirclily
    rm *.eps 2> /dev/null
    for f in lily-${letras}*.pdf
    do
        mv $f ../../figs/$(echo $f | sed "s/$letras/score/")
    done
    cd -
}

cria-texfile
renomeia-e-move-lily
