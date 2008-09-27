NAME = dissertacao-default
TEXSRCS = body-pt.tex abstract.tex resumo.tex newcommand.tex lista-bibliografia.tex paginas-composicao.tex

SCOREDIR = ../opus-6-composicao-mestrado

OTHER += $(LILY_EPS) $(OTHER_EPS4)

-include ~/lib/make/latex.mk
-include ~/repositorios/genos-repos/lib/make/latex.mk

light-clean:
	rm -f dissertacao-default.{aux,lo*,ps,pdf,bl*,dvi,to*,bb*}
	rm -f dissertacao-simples.{aux,lo*,ps,pdf,bl*,dvi,to*,bb*}

cria-partitura:
	rm -f figs/score-dissertacao*.eps
	lilypond -b eps -dno-gs-load-fonts -dinclude-eps-fonts -I $(SCOREDIR)/partitura/notas/ -I $(SCOREDIR)/script/temp -I $(SCOREDIR)/script/systemfiles $(SCOREDIR)/partitura/score-dissertacao.ly
	mv score-dissertacao*.eps figs
	rm score-dissertacao*
	sh gera-paginas-composicao.sh

paginas-composicao.tex: figs/score-dissertacao*.eps
	cria-partitura
