#!/bin/bash

letras=$(ls lily-*-systems.tex | awk -F '-' '{print $2}')
sistemas=lily-score-systems.tex
pages=paginas-composicao.tex
l="  \linebreak"

function renomeia-arquivos-principais {
    for f in lily-*
    do
        g=$(echo $f | sed "s/$letras/score/")
        sed "s/$letras/score/" $f > $g
        rm $f
    done
}

function processa-eps {
    mv lily-${letras}*.eps figs
    cd figs
    mv lily-$letras.eps lily-score.eps
    epstopdf lily-score.eps
    rm lily-score.eps
    for f in lily-$letras-*.eps
    do
        g=$(echo $f | sed "s/$letras/score/")
        mv $f $g
        epstopdf $g
        rm $g
    done
    cd ..
}

function distancia-sistemas {
    sed '1,2 !d' ${sistemas} > ${sistemas}-new
    echo $l >> ${sistemas}-new
    sed '4,8 !d' ${sistemas} >> ${sistemas}-new
    echo $l \\vspace{20pt} >> ${sistemas}-new

    sed '10,$!d' ${sistemas} |\
 sed 's/includegraphics{/includegraphics{figs\//g' |\
 sed 's/linebreak/linebreak\ \\vspace{22pt}/g' \
        >> ${sistemas}-new
    mv ${sistemas}-new ${sistemas}
}

function arruma-paginas {
    sed '1,3 d' ${pages} | sed '$ d' > ${pages}-new ; mv ${pages}-new ${pages}
    sed "s/$letras/score/" ${pages} > ${pages}-novo
    mv ${pages}-novo ${pages}
    ## muda nomes dos sistemas
    sed "s/$letras/score/" ${sistemas} > ${sistemas}-novo
    mv ${sistemas}-novo ${sistemas}
}

function snippet-etc {
    for f in snippet*
    do
        sed "s/$letras/score/" $f > $f-novo
        mv $f-novo $f
    done
}

echo "Processando lytex"
processa-eps
renomeia-arquivos-principais
distancia-sistemas
arruma-paginas
snippet-etc