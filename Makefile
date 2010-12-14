LATEX = pdflatex
BIBTEX = bibtex
EPSTOPDF = epstopdf

EPSFILES = $(wildcard *.eps)
PDFFILES = $(patsubst %.eps,%.pdf,$(EPSFILES))

paper.pdf: paper.tex paper.bib $(PDFFILES)
	$(LATEX) paper
	$(BIBTEX) paper
	$(LATEX) paper
	$(LATEX) paper

.PHONY: latex
latex: 
	$(LATEX) paper

.PHONY: bibtex
bibtex:
	$(BIBTEX) paper

%.pdf: %.eps
	$(EPSTOPDF) $<