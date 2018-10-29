all: proposal.pdf

%.pdf: %.tex ref.bib
	pdflatex $^
	bibtex $*.aux
	pdflatex $^
	pdflatex $^

clean:
	rm -f *.aux *.bbl *.blg *.log *.out *.toc
	rm -f proposal.pdf
