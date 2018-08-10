LATEX = pdflatex
BIBTEX = bibtex
RM = rm -f
FILE = exemplo-tcc

all:	
		latexmk -pdf $(FILE).tex
		@echo ---------------------------------------------------
		@echo Ps: done.

clean:	
		$(RM) $(FILE).aux $(FILE).log $(FILE).out $(FILE).ps $(FILE).pdf $(FILE).toc $(FILE).dvi $(FILE).lof $(FILE).bbl $(FILE).lot $(FILE).blg $(FILE).fdb_latexmk $(FILE).fls *~ *backup
		@echo ---------------------------------------------------
		@echo Directory cleaned
