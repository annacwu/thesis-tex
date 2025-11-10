.PHONY: all clean watch

# Main target
all: thesis.pdf

# Compile thesis
thesis.pdf: thesis.tex *.tex thesis.bib
	latexmk -pdf -interaction=nonstopmode thesis.tex

# Watch mode - auto-compile on file changes
watch:
	latexmk -pdf -pvc -interaction=nonstopmode thesis.tex

# Clean auxiliary files
clean:
	latexmk -c
	rm -f *.bbl *.run.xml *.bcf

# Clean everything including PDF
cleanall:
	latexmk -C
	rm -f *.bbl *.run.xml *.bcf
