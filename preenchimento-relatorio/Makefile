file = contornando-relatorio
out = out
figs = figs
figs-out = figs-out

figures = $(shell dir $(figs)/*.*)
all-figs = $(addsuffix .eps,$(notdir $(basename $(figures))))

vpath %.eps $(out)
vpath %.ly $(figs)
vpath %.eps $(figs-out)
vpath %.dia $(figs)
vpath %.svg $(figs)
vpath %.pdf $(figs)
vpath %.sty config

dvi: $(all-figs) $(file).dvi $(file).tex
ps:  $(all-figs) $(file).ps $(file).tex
pdf:  $(all-figs) $(file).pdf $(file).tex

cleanall: clean
	rm $(file).{aux,bbl,blg,dvi,log}

clean:
	rm -rf $(figs-out) ;\
	rm -rf out ;\
	rm -rf auto ;\
	rm -rf $(svg-figs)

%.dvi: %.tex
	latex $< ;\

%.ps: %.dvi
	dvips -o $@ $<

%.pdf: %.ps
	ps2pdf -sPAPERSIZE=a4 $<

%.eps: %.svg
	mkdir -p $(figs-out) ;\
	inkscape -E $(figs-out)/$@ $<

%.eps: %.dia
	mkdir -p $(figs-out) ;\
	dia --nosplash  -t eps --export=$(figs-out)/$@ $<

%.eps: %.ly
	mkdir -p $(figs-out)/tmp ;\
	cp $< $(figs-out)/tmp ;\
	cd $(figs-out)/tmp ;\
	lilypond -b eps --preview $(notdir $<) ;\
	mv $(notdir $(basename $<)).preview.eps ../$(notdir $(basename $<)).eps ;\
