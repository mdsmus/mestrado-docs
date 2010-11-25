NAME = dissertacao-ufba
TEXSRCS = body-pt.tex abstract.tex resumo.tex newcommand.tex lista-bibliografia.tex paginas-composicao.tex agradecimentos.tex paginas-composicao.lytex

SCOREDIR = ../opus-6-composicao-mestrado
GESTOS = $(SCOREDIR)/script/systemfiles/gestosglobal.ly

OTHER += $(LILY_PDF) $(PNG_PDF) $(GNUPLOT_PDF) $(SVG_PDF)

USE_PDFLATEX = 1

include ~/.latexmk

cleanall: clean score-clean
	rm -f lily\*-*

medium-clean: light-clean
	rm -f $(NAME).{ps,pdf,dvi}

light-clean:
	rm -f $(NAME).{aux,lo*,bl*,to*,bb*}

score-clean:
	rm -f paginas-composicao.tex
	rm -f figs/lily-*.pdf
	rm -rf lbook

paginas-composicao.tex: paginas-composicao.lytex $(GESTOS)
	rm -f paginas-composicao.tex
	rm -f figs/lily-*.pdf
	rm -rf lbook
	mkdir lbook
	lilypond-book -I $(SCOREDIR)/partitura/notas -I $(SCOREDIR)/script/temp -I $(SCOREDIR)/script/systemfiles -I $(SCOREDIR)/partitura --pdf -o lbook paginas-composicao.lytex ;\
	bash arruma-lytex.sh

$(GESTOS):
	cd $(SCOREDIR) ;\
	make atualiza compila ;\
	cd -
