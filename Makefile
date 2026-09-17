# ==============================================================================
# Makefile for SKE Coop Report LaTeX Project
# ==============================================================================

MAIN = main
SRC_FILES = $(shell find . -name "*.tex" -o -name "*.sty" -o -name "*.bib")

.PHONY: all pdf preview watch clean clean-all

# Default target: Compile PDF once
all: pdf

pdf:
	latexmk $(MAIN).tex

# Live Preview Continuous Mode (rebuilds automatically on any .tex file save)
preview watch:
	latexmk -pvc $(MAIN).tex

# Clean auxiliary files
clean:
	latexmk -c

# Clean auxiliary files and generated PDF
clean-all:
	latexmk -C
