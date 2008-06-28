dir = $(pwd)
scriptdir = script
pdfdir = $(globaldir)/pdf
audiodir = $(globaldir)/audio
globaldir = partitura
notasdir = $(globaldir)/notas
partesdir = $(globaldir)/partes
systemdir = $(scriptdir)/systemfiles

vpath gestos%.ly $(systemdir)
vpath score.ly $(globaldir)

.PHONY: default atualiza

default: atualiza compila

atualiza:
	cd $(scriptdir) ;\
	bash atualiza_gestos_pausas ;\
	cd -

compila:
	cd $(scriptdir) ;\
	bash compila ;\
	cd -

ver: default
	cd $(scriptdir) ;\
	bash visualiza ;\
	cd -

clean:
	cd $(scriptdir) ;\
	bash limpa ;\
	cd -

ouvir:
	cd $(scriptdir) ;\
	bash visualiza o ;\
	cd -

partes:
	cd $(scriptdir) ;\
	bash compila p ;\
	cd -

wave:
	timidity -Ow $(audiodir)/score.midi

ouvirwave: $(audiodir)/score.wav
	mplayer $(audiodir)/score.wav