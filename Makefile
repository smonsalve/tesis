ALL: ProyectoGrado.pdf clean open 

%.pdf: %.tex Makefile
	pdflatex --enable-write18 $< && bibtex ProyectoGrado.aux && pdflatex $< 
	#	makeindex ProyectoGrado.nlo -s nomencl.ist -o ProyectoGrado.nls -t ProyectoGrado.nlg
	pdflatex $< 
	
clean:
	  rm -f *.aux	*.bbl	*.blg	*.log	*.out	*.toc	*.lof	*.lot

open:
	open ProyectoGrado.pdf
