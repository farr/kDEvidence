EPSFILES = $(wildcard *.eps)
PDFFILES = $(patsubst %.eps,%.pdf,$(EPSFILES))

paper.pdf: paper.tex paper.bib $(PDFFILES)
	pdflatex paper
	bibtex paper
	pdflatex paper

.PHONY: latex
latex: 
	pdflatex paper

.PHONY: bibtex
bibtex:
	bibtex paper

%.pdf: %.eps
	epstopdf $<