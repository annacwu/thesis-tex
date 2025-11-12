.PHONY: all clean watch format format-file clean-backups help

# Variables
TEXFILES = $(wildcard *.tex)
LATEXINDENT = latexindent

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

# Format all .tex files using latexindent
format:
	@echo "Formatting LaTeX files..."
	@for file in $(TEXFILES); do \
		echo "  Formatting $$file"; \
		$(LATEXINDENT) -w $$file; \
	done
	@echo "Done! Backup files saved as .bak0"

# Format a specific file
format-file:
	@if [ -z "$(FILE)" ]; then \
		echo "Usage: make format-file FILE=filename.tex"; \
		exit 1; \
	fi
	$(LATEXINDENT) -w $(FILE)

# Remove backup files created by latexindent
clean-backups:
	rm -f *.bak*

# Help target
help:
	@echo "Available targets:"
	@echo "  make           - Build the thesis PDF"
	@echo "  make watch     - Watch for changes and auto-rebuild"
	@echo "  make format    - Format all .tex files with latexindent"
	@echo "  make format-file FILE=name.tex - Format a specific file"
	@echo "  make clean     - Remove auxiliary files"
	@echo "  make cleanall  - Remove all generated files including PDF"
	@echo "  make clean-backups - Remove .bak files from latexindent"
	@echo "  make help      - Show this help message"
