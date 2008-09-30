NAME = dissertacao-ufba
TEXSRCS = body-pt.tex abstract.tex resumo.tex newcommand.tex lista-bibliografia.tex paginas-composicao.tex agradecimentos.tex paginas-composicao.lytex figs/contornos.eps

SCOREDIR = ../opus-6-composicao-mestrado
GESTOS = $(SCOREDIR)/script/systemfiles/gestosglobal.ly

OTHER += $(LILY_EPS) $(OTHER_EPS4)

-include ~/lib/make/latex.mk
-include ~/repositorios/genos-repos/lib/make/latex.mk

cleanall:
	clean
	score-clean
	rm -f lily\*-*

light-clean:
	rm -f dissertacao-ufba.{aux,lo*,ps,pdf,bl*,dvi,to*,bb*}

score-clean:
	rm -f {lily-*,snippet*,tmp*}
	rm -f paginas-composicao.tex

paginas-composicao.tex: paginas-composicao.lytex $(GESTOS)
	rm -f figs/lily-*.eps ;\
	lilypond-book -I $(SCOREDIR)/partitura/notas -I $(SCOREDIR)/script/temp -I $(SCOREDIR)/script/systemfiles -I $(SCOREDIR)/partitura paginas-composicao.lytex ;\
	bash arruma-lytex.sh

$(GESTOS):
	cd $(SCOREDIR) ;\
	make atualiza compila ;\
	cd -

figs/contornos.eps: figs/contornos.pdf
	convert $< $@

