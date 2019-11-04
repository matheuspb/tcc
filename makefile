TARGETS = main.pdf presentation.pdf proposal.pdf ratification.pdf

all: $(TARGETS)

%.pdf: %.tex ref.bib
	pdflatex $^
	bibtex $*.aux
	pdflatex $^
	pdflatex $^

clean:
	rm -f *.aux *.bbl *.blg *.log *.out *.toc *.nav *.snm
	rm -f *.las *.loa *.lof *.lot *.lsb
	rm -f $(TARGETS)
