# Contributing to SKE Cooperative Education Report Template

Thank you for considering contributing to the **SKE Cooperative Education Report Template**! This template helps students at the Department of Computer Engineering, Kasetsart University create modular, standardized LaTeX reports that strictly adhere to official department formatting guidelines.

---

## 📋 Table of Contents

- [Code of Conduct & Guidelines](#-code-of-conduct--guidelines)
- [How to Contribute](#-how-to-contribute)
- [Development Setup](#-development-setup)
- [Project Structure & Formatting Rules](#-project-structure--formatting-rules)
- [Git Commit & Branching Conventions](#-git-commit--branching-conventions)
- [Submitting a Pull Request](#-submitting-a-pull-request)
- [Reporting Issues](#-reporting-issues)

---

## 🤝 Code of Conduct & Guidelines

- **Respect Official Guidelines**: Any changes to structural layout, margins, font settings, or page numbering must strictly conform to `reference.pdf`.
- **Maintain Modular Design**: Keep content modular. Chapter and appendix contents belong in `sections/`, package imports and styling in `setup.sty`, and document configuration in `config.tex`.
- **Respectful Communication**: Be constructive and supportive when opening issues or reviewing pull requests.

---

## 🚀 How to Contribute

1. **Bug Fixes**: Fixing LaTeX compilation issues, spacing anomalies, broken references, or package incompatibilities.
2. **Template Improvements**: Improving macros in `setup.sty`, adding helpful build scripts, or updating instructions in `README.md`.
3. **Typography & Styling**: Ensuring font configurations (`fonts/`) and figure/table styling match KU guidelines.

---

## 🛠️ Development Setup

### Prerequisites

Ensure you have a complete TeX distribution installed on your system:

- **Linux**: TeX Live (`sudo apt install texlive-full` or `sudo pacman -S texlive-full`)
- **macOS**: MacTeX (`brew install --cask mactex`)
- **Windows**: MiKTeX or TeX Live

You will also need **XeLaTeX** (required for `fontspec` and TTF font integration) and **GNU Make** (optional, for automation).

### Local Workspace Setup

1. **Fork & Clone** the repository:
   ```bash
   git clone https://github.com/YOUR_USERNAME/ske-coop-report-template.git
   cd ske-coop-report-template
   ```

2. **Test Compilation**:
   ```bash
   make pdf
   ```
   *or directly via XeLaTeX:*
   ```bash
   xelatex -interaction=nonstopmode main.tex
   ```

3. **Use Live Preview** (Continuous Auto-rebuild):
   ```bash
   make preview
   ```
   *or via latexmk:*
   ```bash
   latexmk -pvc main.tex
   ```

4. **Clean Auxiliary Files**:
   ```bash
   make clean        # Cleans .aux, .log, .toc, etc.
   make clean-all    # Cleans auxiliary files and main.pdf
   ```

---

## 📐 Project Structure & Formatting Rules

### Repository Layout

```text
ske-coop-report-template/
├── main.tex                  # Main document entry point
├── config.tex                # Student metadata & configuration definitions
├── setup.sty                 # Package imports, font configurations, page margins
├── Makefile                  # Build and live preview targets
├── .latexmkrc                # latexmk build configuration
├── README.md                 # Project documentation
├── CONTRIBUTION.md           # Contribution guidelines
├── reference.pdf             # Official formatting reference guide
├── fonts/                    # TH Sarabun New TTF font files
├── images/                   # Document figures and logos
└── sections/                 # Chapter and appendix source files
```

### Style & Code Conventions

1. **Font & Margins**:
   - Primary font: **TH Sarabun New** (`fonts/THSarabunNew*.ttf`).
   - Standard margins: **1.0 inch (2.54 cm)** on all sides (Top, Bottom, Left, Right).
   - Do not override `setup.sty` geometry settings without prior discussion.

2. **Modular File Editing**:
   - Do not put text content directly inside `main.tex`. Use `\input{sections/...}`.
   - Separate reusable variables (`\newcommand`) into `config.tex`.
   - Maintain clean LaTeX source formatting with 2-space or 4-space indentation for environments (`\begin{...}` ... `\end{...}`).

3. **LaTeX Cleaning**:
   - Never commit generated build artifacts (`.aux`, `.log`, `.out`, `.toc`, `.fls`, `.fdb_latexmk`, `.xdv`, `main.pdf`) to Git. Verify with `git status` before committing.

---

## 🔀 Git Commit & Branching Conventions

### Branch Names

Use descriptive branch names prefixed by their purpose:

- `feat/add-bibliography-style`
- `fix/margin-overflow-chapter-headers`
- `docs/update-readme-setup`

### Commit Messages

Follow standard Conventional Commits:

- `feat: add helper macros for listing subfigures`
- `fix: correct table caption alignment in setup.sty`
- `docs: add CONTRIBUTION.md guidelines`
- `style: reformat section tex files`

---

## 📩 Submitting a Pull Request

1. **Check Build Success**: Run `make pdf` locally and verify that `main.pdf` builds without errors or missing font warnings.
2. **Clean Output Files**: Run `make clean` before staging changes.
3. **Automated CI Checks**: Every PR triggers the GitHub Actions workflow (`.github/workflows/build.yml`), which compiles `main.tex` using XeLaTeX and uploads `main.pdf` as a workflow artifact for visual inspection.
4. **Open a Pull Request**:
   - Provide a clear title and description of your changes.
   - Reference any related issues (e.g., `Closes #12`).
   - Detail how you tested the template (e.g., TeX distribution, OS version, compiler used).

---

## 🐛 Reporting Issues

If you encounter a bug, formatting mismatch, or compilation failure:

1. Search existing [GitHub Issues](../../issues) to avoid duplicates.
2. Open a new issue with:
   - **Environment details**: Operating System, TeX distribution (TeX Live / MacTeX / MiKTeX), and compiler (`xelatex` version).
   - **Error details**: Relevant log snippet from `main.log` or terminal output.
   - **Expected vs Actual Behavior**: How the output differs from `reference.pdf`.

---

Thank you for helping improve the template for everyone! 🚀
