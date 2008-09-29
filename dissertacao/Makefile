NAME = dissertacao-ufba
TEXSRCS = body-pt.tex abstract.tex resumo.tex newcommand.tex lista-bibliografia.tex paginas-composicao.tex agradecimentos.tex

SCOREDIR = ../opus-6-composicao-mestrado

OTHER += $(LILY_EPS) $(OTHER_EPS4)

-include ~/lib/make/latex.mk
-include ~/repositorios/genos-repos/lib/make/latex.mk

light-clean:
	rm -f dissertacao-ufba.{aux,lo*,ps,pdf,bl*,dvi,to*,bb*}

score-clean:
	rm -f {lily-*,snippet*,tmp*}
	rm -f paginas-composicao.tex

paginas-composicao.tex:
	rm -f figs/lily-*.eps ;\
	lilypond-book -I $(SCOREDIR)/partitura/notas -I $(SCOREDIR)/script/temp -I $(SCOREDIR)/script/systemfiles -I $(SCOREDIR)/partitura paginas-composicao.lytex ;\
	bash arruma-lytex.sh
