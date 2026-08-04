# SKE Cooperative Education Report Formatting & Structure Guidelines

This document synthesizes all official formatting specifications, typography rules, layout parameters, and structural advisories from the Kasetsart University Cooperative Education Report guidelines (`reference.pdf`).

---

## 📏 Page Layout & Typography Specifications

- **Paper Size**: Standard A4 paper.
- **Margins**: **1.0 inch (2.54 cm)** on all four sides (Top, Bottom, Left, Right).
- **Orientation**: Portrait (vertical printing). Images, architecture diagrams, or wide tables may use Landscape (horizontal) orientation as needed.
- **Primary Font**: **TH Sarabun New** (TTF font provided in [`fonts/`](./fonts/)).
- **Font Sizes & Weights**:
  - **Cover Document Header**: 22 pt Bold
  - **Cover Title / Abstract / Chapter Headers**: 20 pt Bold
  - **Section Headers (1.1, 1.2, etc.)**: 18 pt Bold
  - **Subsection Headers & Body Text**: 16 pt Regular
- **Page Numbering**:
  - **Front Matter** (*Abstract, Acknowledgement, Contents, List of Figures, List of Tables*): Enclosed in parentheses `(1)`, `(2)`, `(3)`, ... positioned at top-right.
  - **Main Body & Appendices** (*Chapters 1–6, References, Appendices A–B*): Standard numbers `1`, `2`, `3`, ... positioned at top-right.

---

## 📑 Required Chapter Structure & Content Guidelines

### 0. Front Matter

1. **Cover Page (`00_cover.tex`)**:
   - Header: *Cooperative Education Report* (22 pt bold)
   - Report Title (20 pt bold)
   - Company name & location, Student Full Name, Student ID, Academic Year, Department of Computer Engineering, Faculty of Engineering, Kasetsart University.
2. **Abstract (`00_abstract.tex`)**:
   - Title: **Abstract** (20 pt bold, page number `(1)`).
   - Concise executive summary of the internship objectives, methodology, key outcomes, and project impact (16 pt body text).
3. **Acknowledgement (`00_acknowledgement.tex`)**:
   - Title: **Acknowledgement** (page number `(2)`).
   - Expressions of gratitude to supervisor, company team members, department faculty, and supporting mentors.
   - Includes student signature line and final co-op date (`DD / MM / YYYY`).
4. **Table of Contents & Lists (`00_contents.tex`)**:
   - Table of Contents `(3)`
   - List of Figures `(4)`
   - List of Tables `(5)`

---

### 1. Main Body Chapters

#### Chapter 1: Introduction (`01_introduction.tex`)
- **1.1 Motivations and Importance**: Background and significance of the problem/project.
- **1.2 Objectives**: Numbered list of specific goals to achieve during the coop period.
- **1.3 Scope of Work**: System boundaries, target deliverables, technologies used, and constraints.
- **1.4 History and Detail of Company**:
  - Company name, location, and overview.
  - Company profile, core products, or primary technical services.
  - Organizational chart and management structure.
  - Specific position and technical role assigned to the student.
  - Supervisor’s full name and position.
  - Duration of the internship/cooperative education period.
- **1.5 Expected Benefits**: Anticipated deliverables and value added for the student, company, and university.

#### Chapter 2: Background Knowledge and Related Work (`02_background.tex`)
- **2.1 Background Knowledge**: Essential technical domain knowledge, frameworks, algorithms, and key concepts required for the project.
- **2.2 Related Work**: Previous internal company projects, academic literature, or existing industry solutions related to your work.

#### Chapter 3: Methodology (`03_methodology.tex`)
- **3.1 System Architecture & Design**: High-level and detailed architecture diagrams, database schemas, API specs, or design patterns used.
- **Tools & Technologies**: Software tools, hardware, frameworks, and devops pipeline employed.
- **Implementation Procedures**: Step-by-step development process, algorithms, workflows, and implementation details.

#### Chapter 4: Results and Analysis (`04_results.tex`)
- **4.1 Results**: Presentation of outputs, user interface screenshots, benchmark plots, performance metrics, or experimental data.
- **4.2 Analysis**: Detailed discussion, interpretation, evaluation of results against project objectives, and technical trade-offs.

#### Chapter 5: Conclusion (`05_conclusion.tex`)
- **Summary of Work**: Summary of completed deliverables vs initial goals.
- **Expectations**: Reflection on achievements relative to initial expectations.
- **Benefits Breakdown**:
  - Benefits to **yourself** (technical skills, soft skills, professional domain experience).
  - Benefits to the **company** (implemented features, tooling, optimized processes).
  - Benefits to the **university** (academic-industry link, feedback for curriculum).
- **Personal SWOT Analysis**: Evaluation of your own Strengths, Weaknesses, Opportunities, and Threats during the internship.
- **Impressive & Special Experiences**: Notable challenges overcome, memorable milestones, or workplace culture insights.

#### Chapter 6: Problems and Comments (`06_problems.tex`)
Categorized reflection on challenges encountered and suggestions for improvement across three perspectives:
1. **Student Perspective**: Personal difficulties faced (technical, communication, time management) and lessons learned.
2. **Company Perspective**: Observations regarding workplace onboarding, supervisor guidance, infrastructure, or task assignment.
3. **University Perspective**: Feedback regarding course preparation, coop coordination, prerequisite knowledge, or administrative processes.

---

## 📚 Citation & Reference Guidelines (`07_references.tex`)

### In-Text Citation Rules
- Cite references within document text using bracketed numbers, e.g., `[1]` or `[1, 2]`.
- Numbers must match the corresponding entry in the References list sequentially.

### Reference List Formatting Rules by Source Type

1. **Books**:
   - **Format**: `Author, Title, Edition (if applicable), Publisher, Location, Year.`
   - **Thai Example**: อุดมศักดิ์ สินธิพงษ์, *กฎหมายเกี่ยวกับสิ่งแวดล้อม*, พิมพ์ครั้งที่ 2, สำนักพิมพ์วิญญูชน, กรุงเทพฯ, 2549.
   - **English Example**: R.A. Baeza-Yates and B.A. Ribeiro-Neto, *Modern Information Retrieval*, ACM Press & Addison Wesley, New York, 1999.

2. **Conference Proceedings**:
   - **Format**: `Author, "Title", In Proceedings/Conference Name, Pages, Year.`
   - **Thai Example**: สิริยาภรณ์ ไกรมาก, ปรารถนา ปรารถนาดี และ จิรชัย พุทธกุลสมศิริ, "การพัฒนาแบบจำลองการทำนายคุณภาพของผลิตภัณฑ์กาแฟคั่วบด", ใน *รายงานการประชุมทางวิชาการของมหาวิทยาลัยเกษตรศาสตร์ ครั้งที่ 47*, น. 125-132, 2552.
   - **English Example**: R.A. Baeza-Yates, F. Saint-Jean, and C. Castillo, "Web Structure, Dynamics and Page Quality", In *Proceedings of the 9th International Symposium on String Processing and Information Retrieval*, pp. 117-130, 2002.

3. **Journals / Magazines**:
   - **Format**: `Author, "Title", Journal Name, Vol, No (if applicable), Pages, Year.`
   - **Thai Example**: สุจินต์ ภัทรภูวดล, วารีรัตน์ สมประทุม, รัชดาภรณ์ เขียวหวาน, กรุง สีตะธนี และ สิริกุล วะสี, "การคัดเลือกพันธุ์พริกต้านทานต่อโรคไวรัสใบด่างแตงและใบด่างประของพริก", *วารสารวิทยาศาสตร์เกษตร*, ปีที่ 39, ฉบับที่ 3, น. 376-379, 2551.
   - **English Example**: S. Brin and L. Page, "The Anatomy of a Large-Scale Hypertextual Web Search Engine", *Computer Networks and ISDN Systems*, vol. 30, no. 1-7, pp. 107-117, 1998.

4. **Web / Information Resources**:
   - **Format**: `Author (if available), Title, Year. Source: URL [Accessed: Date].`
   - **Thai Example**: ศูนย์เทคโนโลยีอิเล็กทรอนิกส์และคอมพิวเตอร์แห่งชาติ, สรรสาร ระบบสืบค้นข้อมูลภาษาไทย, 2560. แหล่งที่มา: https://www.nectec.or.th [เข้าถึงเมื่อ: 1 กรกฎาคม 2561].
   - **English Example**: Lucene: The Apache Software Foundation, 2016. Available: https://lucene.apache.org [Accessed on: 1 July 2018].

---

## 📷 Appendices Guidelines

- **Appendix A: Daily Reports (`08_appendix_a.tex`)**: Log of daily work activities categorized by date.
- **Appendix B: Workplace Photos (`09_appendix_b.tex`)**: Photo documentation featuring the student actively engaged in co-op activities at the workplace, with dates and descriptions.
