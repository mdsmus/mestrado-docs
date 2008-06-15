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

score.ps: score.ly
	cd $(globaldir)
	lilypond -I $(globaldir) -I $(notasdir) -I $(systemdir)/gestos*.ly $<
	mv score.{ps,pdf} $(pdfdir)
	mv score.midi $(audiodir)
	cd $(dir)

ver: score.ps
	gv --watch $(pdfdir)/$< &
