.PHONY: pdf, clean

MAINTEX = itsec
CHAPTER = chapters/

pdf:
	pdflatex $(MAINTEX).tex
#	bibtex $(MAINTEX).aux
	pdflatex $(MAINTEX).tex
	pdflatex $(MAINTEX).tex
	open $(MAINTEX).pdf

clean:
	rm $(CHAPTER)*.aux
	rm $(MAINTEX).aux $(MAINTEX).toc $(MAINTEX).log $(MAINTEX).out
	rm $(MAINTEX).bbl $(MAINTEX).blg
