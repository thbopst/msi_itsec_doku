.PHONY: pdf, clean

MAINTEX = itsec
CHAPTER = chapters/

pdf:
	pdflatex $(MAINTEX).tex -file-line-error
	bibtex $(MAINTEX).aux
	pdflatex $(MAINTEX).tex -file-line-error
	pdflatex $(MAINTEX).tex -file-line-error
	open $(MAINTEX).pdf

clean:
	rm $(CHAPTER)*.aux
	rm $(MAINTEX).aux $(MAINTEX).toc $(MAINTEX).log $(MAINTEX).out
	rm $(MAINTEX).bbl $(MAINTEX).blg
