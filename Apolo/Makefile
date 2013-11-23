#Coded by Juan Pineda <jdpineda2@eafit.edu.co>
ARCHIVO=principal
DIRECTORIO_PADRE=$(shell basename `pwd`)
MSG_FILE=/tmp/msgfile($$).tmp

all:	$(ARCHIVO).pdf
	mv $(ARCHIVO).pdf $(DIRECTORIO_PADRE).pdf
	evince $(DIRECTORIO_PADRE).pdf

$(ARCHIVO).pdf: $(ARCHIVO).tex
	pdflatex $(ARCHIVO).tex
#	bibtex $(ARCHIVO).aux
	pdflatex $(ARCHIVO).tex
#	pdflatex $(ARCHIVO).tex

clean:
	-find . -iname \*~ -delete -or -iname \*.out -delete -or -iname \*.dvi -delete -or -iname \*.aux -delete -or -iname \*.log -delete -or -iname \*.toc -delete -or -iname \*.pdf -delete -or -iname \*.nav -delete -or -iname \*.snm -delete -or -iname \*.bbl -delete -or -iname \*.blg -delete -or -iname \*.ps -delete -or -iname \*.lof -delete -or -iname \#*.*\# -delete

commit:
	-find . -iname \*~ -delete -or -iname \*.out -delete -or -iname \*.dvi -delete -or -iname \*.aux -delete -or -iname \*.log -delete -or -iname \*.toc -delete -or -iname \*.pdf -delete -or -iname \*.nav -delete -or -iname \*.snm -delete -or -iname \*.bbl -delete -or -iname \*.blg -delete -or -iname \*.ps -delete -or -iname \*.lof -delete -or -iname \#*.*\# -delete
	git-commit -a
	git push origin
