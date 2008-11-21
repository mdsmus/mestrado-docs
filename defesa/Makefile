NAME = defesa
TEXSRCS =  figs/pagina-inicial-opus-6.eps figs/planejamento-inicial.eps

OTHER += $(LILY_PDF) $(OTHER_EPS4) $(OTHER_PDF4) $(OTHER_PDF3)

USE_PDFLATEX = 1

-include ~/repositorios/genos-repos/lib/make/latex.mk

light-clean:
	rm -f $(NAME).{aux,lo*,ps,pdf,bl*,dvi,to*,bb*,nav,out,snm}

figs/pagina-inicial-opus-6.eps: figs/pagina-inicial-opus-6.pdf
	convert $< $@

figs/planejamento-inicial.eps: figs/planejamento-inicial.pdf
	convert $< $@
