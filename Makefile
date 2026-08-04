# ==============================================================================
# Makefile for SKE Coop Report LaTeX Project
# ==============================================================================

MAIN = main
TEX_FILES = $(shell find . -name "*.tex" -o -name "*.sty")

.PHONY: all pdf preview watch clean clean-all

# Default target: Compile PDF once
all: pdf

pdf:
	xelatex -interaction=nonstopmode $(MAIN).tex
	xelatex -interaction=nonstopmode $(MAIN).tex

# Live Preview Continuous Mode (rebuilds automatically on any .tex file save)
preview watch:
	latexmk -pvc $(MAIN).tex

# Clean auxiliary files
clean:
	latexmk -c

# Clean auxiliary files and generated PDF
clean-all:
	latexmk -C
