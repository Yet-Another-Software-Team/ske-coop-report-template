# ==============================================================================
# latexmk Configuration for XeLaTeX Live Preview
# ==============================================================================

# Use XeLaTeX engine for PDF generation
$pdf_mode = 5;
$xelatex = 'xelatex -interaction=nonstopmode -synctex=1 %O %S';

# Disable continuous mode temporary file swap to prevent PDF viewer flickering
$pvc_view_file_via_temporary = 0;

# Previewer configuration (default to system default PDF viewer)
$pdf_previewer = 'start xdg-open %O %S';
