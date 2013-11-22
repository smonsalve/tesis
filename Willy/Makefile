ALL: main.pdf clean open 

%.pdf: %.tex Makefile
	pdflatex --enable-write18 $< && bibtex main.aux && pdflatex $< 
	makeindex main.nlo -s nomencl.ist -o main.nls -t main.nlg
	pdflatex $< 
	
clean:
	  rm -f *.aux	*.bbl	*.blg	*.log	*.out	*.toc

open:
	open main.pdf
