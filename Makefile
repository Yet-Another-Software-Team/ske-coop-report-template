# ==============================================================================
# Makefile for SKE Coop Report LaTeX Project
# ==============================================================================

MAIN = main
OUT_DIR = out
SRC_FILES = $(shell find . -name "*.tex" -o -name "*.sty" -o -name "*.bib")

.PHONY: all pdf preview watch clean clean-all

# Default target: Compile PDF once
all: pdf

pdf:
	latexmk -outdir=$(OUT_DIR) $(MAIN).tex

# Live Preview Continuous Mode (rebuilds automatically on any .tex file save)
preview watch:
	latexmk -outdir=$(OUT_DIR) -pvc $(MAIN).tex

# Clean auxiliary files
clean:
	latexmk -outdir=$(OUT_DIR) -c

# Clean auxiliary files and generated PDF
clean-all:
	latexmk -outdir=$(OUT_DIR) -C