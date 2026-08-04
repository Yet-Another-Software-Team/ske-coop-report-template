# SKE Cooperative Education Report Template

Modular, multi-file **LaTeX template** for the Cooperative Education Report at the **Department of Computer Engineering, Faculty of Engineering, Kasetsart University**.

This template adheres strictly to the official document formatting guidelines specified in [`FORMATTING_GUIDELINES.md`](./FORMATTING_GUIDELINES.md) (synthesized from the university reference guide) and uses the official **TH Sarabun New** font (from the KU Registrar).

---

## 📁 Project Structure

```text
ske-coop-report-template/
├── main.tex                  # Main document entry point
├── config.tex                # Student metadata & report configuration
├── setup.sty                 # Package imports, font setup, page margins & styling
├── Makefile                  # Build & live preview targets
├── .latexmkrc                # latexmk configuration for XeLaTeX
├── README.md                 # Project documentation
├── FORMATTING_GUIDELINES.md  # Official report formatting & content advisories
├── CONTRIBUTION.md           # Contribution guidelines
├── .gitignore                # Git ignore rules for LaTeX auxiliary files
├── fonts/                    # TH Sarabun New TrueType font files
│   ├── THSarabunNew.ttf
│   ├── THSarabunNew-Bold.ttf
│   ├── THSarabunNew-Italic.ttf
│   └── THSarabunNew-BoldItalic.ttf
├── images/
│   └── ku_logo.png           # Kasetsart University Faculty of Engineering Logo
└── sections/                 # Modular report chapters
    ├── 00_cover.tex          # External Cover Page
    ├── 00_abstract.tex       # Abstract (Page numbering: (1))
    ├── 00_acknowledgement.tex # Acknowledgement (Page numbering: (2))
    ├── 00_contents.tex       # Table of Contents, List of Figures & Tables
    ├── 01_introduction.tex   # Chapter 1: Introduction
    ├── 02_background.tex     # Chapter 2: Background Knowledge and Related Work
    ├── 03_methodology.tex    # Chapter 3: Methodology
    ├── 04_results.tex        # Chapter 4: Results and Analysis
    ├── 05_conclusion.tex     # Chapter 5: Conclusion
    ├── 06_problems.tex       # Chapter 6: Problems and Comments
    ├── 07_references.tex     # References (Thai & English format)
    ├── 08_appendix_a.tex     # Appendix A: Daily Reports
    └── 09_appendix_b.tex     # Appendix B: Workplace Photos
```

---

## ⚙️ Requirements & Fonts

- **Compiler**: XeLaTeX (recommended) or LuaLaTeX.
- **Font**: Official **TH Sarabun New** (from [KU Registrar](https://registrar.ku.ac.th/it_thsarabun)). The required TTF font files are provided in the [`fonts/`](./fonts/) folder.
- **Page Layout**: Standard A4 paper with **1.0-inch (2.54 cm)** margins on top, bottom, left, and right.

---

## 💻 Live Preview & Compilation (Linux CLI)

### 🔴 Live Preview Mode (Auto-Rebuild on Save)

Run either of the following commands in your terminal:

```bash
make preview
```
*or*
```bash
latexmk -pvc main.tex
```

`latexmk -pvc` will watch all `.tex`, `.sty`, and image files. Every time you edit and save any file in your text editor (Vim, Neovim, Emacs, Helix, Kakoune, etc.), it automatically re-compiles `main.pdf`.

#### Recommended Auto-Reloading PDF Viewers for Linux:
- **Zathura** (Lightweight, Vim keybindings, instant auto-refresh):
  ```bash
  sudo pacman -S zathura zathura-pdf-mupdf   # Arch Linux
  sudo apt install zathura zathura-cb        # Debian / Ubuntu
  ```
- **Evince / Okular**: Standard PDF viewers with built-in file watching.

---

### 🔨 Manual One-Time Build

```bash
make pdf
```
*or*
```bash
xelatex -interaction=nonstopmode main.tex
```

---

### 🧹 Cleaning Build Files

```bash
make clean      # Clean auxiliary build files
make clean-all  # Clean auxiliary files and generated main.pdf
```
