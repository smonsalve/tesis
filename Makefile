ALL: ProyectoGrado.pdf clean open

%.pdf: %.tex Makefile
	pdflatex --enable-write18 $< && bibtex ProyectoGrado.aux && pdflatex $< && pdflatex $< 
	
clean:
	  rm -f *.aux	*.bbl	*.blg	*.log	*.out	*.toc

open:
	open ProyectoGrado.pdf
