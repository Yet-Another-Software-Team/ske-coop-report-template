# Kasetsart University SKE Cooperative Education Report Formatting Guidelines

Comprehensive guide synthesized from official Kasetsart University Cooperative Education guidelines for engineering students.

---

## 📐 Page Setup & Margins

| Property             | Value                | Notes                                 |
| :------------------- | :------------------- | :------------------------------------ |
| **Paper Size**       | A4 (210 mm × 297 mm) | Standard portrait orientation         |
| **Top Margin**       | 1.0 inch (2.54 cm)   |                                       |
| **Bottom Margin**    | 1.0 inch (2.54 cm)   |                                       |
| **Left Margin**      | 1.0 inch (2.54 cm)   | Standard thesis/coop binding margin   |
| **Right Margin**     | 1.0 inch (2.54 cm)   |                                       |
| **Paragraph Indent** | 1.5 cm               | First line of each paragraph          |
| **Line Spacing**     | 1.15                 | Optimal Thai/Latin script readability |

---

## 🔤 Font Hierarchy (TH Sarabun New)

| Element                  | Size (pt) | Style            | Alignment                |
| :----------------------- | :-------- | :--------------- | :----------------------- |
| **Document Title**       | 22 pt     | Bold             | Centered                 |
| **Chapter Header**       | 20 pt     | Bold             | Centered                 |
| **Section Header**       | 18 pt     | Bold             | Left-aligned             |
| **Subsection Header**    | 16 pt     | Bold             | Left-aligned             |
| **Body Text**            | 16 pt     | Regular          | Justified / Left-aligned |
| **Captions / Footnotes** | 14–16 pt  | Regular / Italic | Centered                 |

---

## 📄 Front Matter & Page Numbering Rules

1. **Cover Page (`00_cover.tex`)**:
   - Must contain: Faculty Logo, Report Title (Thai/English), Student Name & ID, Department/Faculty, Academic Semester/Year.
   - **No page number printed**.
2. **Abstract (`00_abstract.tex`)**:
   - Numbered with parenthesized Arabic numerals: **`(1)`** at top-right.
3. **Acknowledgement (`00_acknowledgement.tex`)**:
   - Continues parenthesized numbering: **`(2)`** at top-right.
4. **Table of Contents & Lists (`00_contents.tex`)**:
   - Numbered sequentially: **`(3)`**, **`(4)`**, etc.
5. **Main Body Chapters (Chapters 1–6, References, Appendices)**:
   - Starts at Chapter 1 with normal Arabic numerals: **`1`**, **`2`**, **`3`**, etc., at top-right.

---

## 📝 Required Chapter Outlines & Content Expectations

### Chapter 1: Introduction (`01_introduction.tex`)

- **Motivations and Importance**: Background problem, why the internship/project is necessary.
- **Objectives**: Clear, bulleted project or internship goals.
- **Scope of Work**: Boundaries of responsibilities, technologies, and deliverables.
- **History and Detail of Company**: Company background, organizational chart, supervisor info.
- **Expected Benefits**: Anticipated deliverables for student, workplace, and university.

### Chapter 2: Background Knowledge and Related Work (`02_background.tex`)

- **Background Knowledge**: Theoretical foundation, frameworks, SDKs, and platforms required.
- **Related Work**: Existing industry or academic solutions and comparison against current work.

### Chapter 3: Methodology (`03_methodology.tex`)

- **System Development and Execution**: Architecture diagrams, workflows, sprint cycles, implementation steps, and technical approaches.

### Chapter 4: Results and Analysis (`04_results.tex`)

- **Results**: Delivered features, system screenshots, benchmarks, or performance evaluation.
- **Analysis**: Technical evaluation, trade-offs, metrics discussion, and goal achievement verification.

### Chapter 5: Conclusion (`05_conclusion.tex`)

- **Summary of Work**: High-level synthesis of completed tasks and contributions.
- **Expectations vs. Actual Outcomes**: Evaluation of initial objectives against final state.
- **Benefits**: Value delivered to the host company and skills acquired by the student.
- **SWOT Analysis of Yourself**: Personal Strengths, Weaknesses, Opportunities, and Threats analysis reflecting on the internship experience.
- **Special / Impressive Experiences**: Memorable professional or team experiences.

### Chapter 6: Problems and Comments (`06_problems.tex`)

Categorized reflection on challenges encountered and suggestions for improvement across three perspectives:

1. **Student Perspective**: Personal difficulties faced (technical, communication, time management) and lessons learned.
2. **Company Perspective**: Observations regarding workplace onboarding, supervisor guidance, infrastructure, or task assignment.
3. **University Perspective**: Feedback regarding course preparation, coop coordination, prerequisite knowledge, or administrative processes.

---

## 📚 Citation & Reference Guidelines (`07_references.tex` & `references.bib`)

The template manages citations using **BibTeX** (`references.bib`) with the `ieeetr` bibliography style (bracketed numeric citations sorted by appearance in the text):

### In-Text Citation Rules

- Cite references within document text using the `\cite{key}` command, e.g., `\cite{baeza1999modern}` or multiple keys `\cite{baeza1999modern, brin1998anatomy}`.
- In-text citations render as bracketed numbers matching the reference list order: `[1]` or `[1, 2]`.
- The `cite` package compresses and sorts ranges automatically (e.g. `[1-3]`).

### BibTeX Entry Formatting by Source Type

1. **Books**:
   - **Fields**: `author`, `title`, `edition` (optional), `publisher`, `address`, `year`.
   - **BibTeX Example**:
     ```bibtex
     @book{baeza1999modern,
       author    = {R. A. Baeza-Yates and B. A. Ribeiro-Neto},
       title     = {Modern Information Retrieval},
       publisher = {ACM Press \& Addison Wesley},
       address   = {New York},
       year      = {1999}
     }
     ```
   - **Thai Example**:
     ```bibtex
     @book{sinthipong2006law,
       author    = {{อุดมศักดิ์ สินธิพงษ์}},
       title     = {กฎหมายเกี่ยวกับสิ่งแวดล้อม},
       edition   = {2},
       publisher = {สำนักพิมพ์วิญญูชน},
       address   = {กรุงเทพฯ},
       year      = {2549}
     }
     ```

2. **Conference Proceedings**:
   - **Fields**: `author`, `title`, `booktitle`, `pages`, `year`.
   - **BibTeX Example**:
     ```bibtex
     @inproceedings{baeza2002web,
       author    = {R. A. Baeza-Yates and F. Saint-Jean and C. Castillo},
       title     = {Web Structure, Dynamics and Page Quality},
       booktitle = {Proceedings of the 9th International Symposium on String Processing and Information Retrieval},
       pages     = {117--130},
       year      = {2002}
     }
     ```

3. **Journals / Magazines**:
   - **Fields**: `author`, `title`, `journal`, `volume`, `number`, `pages`, `year`.
   - **BibTeX Example**:
     ```bibtex
     @article{brin1998anatomy,
       author  = {S. Brin and L. Page},
       title   = {The Anatomy of a Large-Scale Hypertextual Web Search Engine},
       journal = {Computer Networks and ISDN Systems},
       volume  = {30},
       number  = {1--7},
       pages   = {107--117},
       year    = {1998}
     }
     ```

4. **Web / Online Resources**:
   - **Fields**: `author` (if available), `title`, `year`, `howpublished`, `note`.
   - **BibTeX Example**:
     ```bibtex
     @misc{lucene2016,
       author       = {{Apache Software Foundation}},
       title        = {Lucene},
       year         = {2016},
       howpublished = {Available: \url{https://lucene.apache.org}},
       note         = {[Accessed on: 1 July 2018]}
     }
     ```

> [!TIP]
> **Thai Author Names in BibTeX**:
> Wrap Thai author names in double curly braces (e.g., `author = {{ชื่อ นามสกุล}}`). This tells BibTeX to treat the entire name as an indivisible string and prevents English initial abbreviation from truncating multi-byte UTF-8 Thai characters.

---

## 📷 Appendices Guidelines

- **Appendix A: Daily Reports (`08_appendix_a.tex`)**: Log of daily work activities categorized by date.
- **Appendix B: Workplace Photos (`09_appendix_b.tex`)**: Photo documentation featuring the student actively engaged in co-op activities at the workplace, with dates and descriptions.
