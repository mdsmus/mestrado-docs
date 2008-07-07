dir = $(pwd)
scriptdir = script
pdfdir = $(globaldir)/pdf
audiodir = $(globaldir)/audio
globaldir = partitura
notasdir = $(globaldir)/notas
partesdir = $(globaldir)/partes
systemdir = $(scriptdir)/systemfiles
audiofile = audio

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

partes:
	cd $(scriptdir) ;\
	bash compila p ;\
	cd -

cria-audio:
	cd $(globaldir) ;\
	lilypond -I ../$(systemdir) -I $(notdir $(notasdir)) $(audiofile).ly ;\
	mv $(audiofile).midi $(notdir $(audiodir)) ;\
	cd -

ouvir:
	timidity $(audiodir)/$(audiofile).midi

wave:
	timidity -Ow $(audiodir)/$(audiofile).midi

ouvirwave: $(audiodir)/$(audiofile).wav
	mplayer $(audiodir)/$(audiofile).wav
