#Coded by jdpinedac <jpineda2@eafit.edu.co>
DIRECTORIO_PADRE=$(shell basename `pwd`)
NAME_TAR_BZ2=$(DIRECTORIO_PADRE)_`date +%s_%A_%d_%B_%Y_%I_%M_%p`.tar.bz2
DIR_BACKUP=./BackupsProyectos/

#Presentation's name
#PRESENTATION=$(eval $(`ls | grep *.tex | cut -d "." -f1`))
PRESENTATION=apolobasics
ARTICLE=$(PRESENTATION)article

# Parts Directory
PARTSDIR=./partes/

all: $(PRESENTATION).pdf 
	evince $(PRESENTATION).pdf&

$(PRESENTATION).pdf: $(PRESENTATION).tex
	pdflatex $(PRESENTATION).tex
	pdflatex $(PRESENTATION).tex

backup:
	make clean; \
	cd ..;\
	tar -jvcf $(NAME_TAR_BZ2)  $(DIRECTORIO_PADRE)/ ;\
	mkdir -p $(DIR_BACKUP); \
	mv $(DIRECTORIO_PADRE)*.tar.bz2 $(DIR_BACKUP)

clean:
	-find . -iname \*~ -delete -or -iname \*.out -delete -or -iname \*.dvi -delete -or -iname \*.aux -delete -or -iname \*.log -delete -or -iname \*.toc -delete -or -iname \*.pdf -delete -or -iname \*.nav -delete -or -iname \*.snm -delete -or -iname \*.bbl -delete -or -iname \*.blg -delete -or -iname \*.vrb -delete
