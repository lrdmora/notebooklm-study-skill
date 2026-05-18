# Reference 01 — Intake Interview & Master Index Template

---

## INTAKE INTERVIEW

Ask these questions in order. Keep the tone conversational.
If the user volunteers an answer early, note it and skip that question.
Do not generate any files until all required questions are answered.

---

### Required Questions

**Q1 — Class name**
"What is the name of the class or subject you are studying for?"

**Q2 — Organization**
"Is your class organized by units, chapters, or both?
(Most classes test by unit — if you are not sure, say units.)"

**Q3 — Unit count** *(ask only if units or both)*
"How many units does the class have?"

**Q4 — Chapter count** *(ask only if chapters or both)*
"How many chapters does the class have?"

**Q5 — Formulas**
"Does the class involve formulas you need to memorize or apply?
(Examples: math, chemistry, physics, economics.) YES or NO."

**Q6 — REF materials**
"Do you have any of the following? Check all that apply:
- Syllabus
- Sample tests or practice exams
- Grading weights or exam breakdowns
- Practice questions from the instructor
(Say NONE if you do not have any of these.)"

**Q7 — Source access**
"Will I have access to your source files in a folder, or will you
list your files manually? (Folder access or Manual list.)"

---

### Optional Follow-Up

If the user says folder access → ask for the path.
If the user says manual → say: "No problem. After I generate your
package, I will help you assign the correct prefix to each file."

---

## MASTER INDEX TEMPLATE

Fill in all fields from intake answers before generating.
Expand the GENERATED NOTES table to match the actual number of units.

---

```
MASTER INDEX — [CLASS NAME]

================================================================
HOW TO USE THIS INDEX
================================================================

This file is uploaded as a source in NotebookLM. The system reads
it before every response to understand how your knowledge base is
organized. Do not delete or rename this file.

To use a prompt file: tell the system which prompt and which scope.
Examples:
  "Use PROMPT_Slide_Deck for Unit 1"
  "Use PROMPT_Flashcards for Chapter 3"
  "Use PROMPT_Cumulative_Exam for the full course"

================================================================
PREFIX SYSTEM
================================================================

SOURCE FILES (you upload these)
  DATA_U[#]_       Textbook / study material by unit
  DATA_C[#]_       Textbook / study material by chapter
  VOCAB_U[#]_      Glossary by unit
  VOCAB_C[#]_      Glossary by chapter
  FORMULAS_U[#]_   Formula sheet by unit
  FORMULAS_C[#]_   Formula sheet by chapter
  REF_             Syllabus, weights, sample tests (upload once)
  00_MASTER_INDEX  This file — index of everything
  SYSTEM_PROMPT    System instructions (contents pasted into panel)
  PROMPT_[NAME]    Reusable prompt files (invoke by name)

GENERATED NOTES (you save these inside NotebookLM)
  NOTES_U[#]_      Processed notes created during unit setup
  REVIEW_          Cross-unit notes created during final exam prep

================================================================
PROMPT FILES — Uploaded as Sources
================================================================

PROMPT_Extraction       Full 5-section extraction pass
PROMPT_Key_Concepts     Hierarchical concept outline
PROMPT_Glossary         Prioritized glossary with cross-reference
PROMPT_Formulas         Formula sheet with vocab cross-reference
PROMPT_Slide_Deck       Slide deck outline
PROMPT_Study_Notes      Narrative study guide
PROMPT_Practice_Quiz    Practice quiz with answer key
PROMPT_Flashcards       Flashcard set
PROMPT_Weak_Spot        Gap analysis
PROMPT_Concept_Map      Concept map
PROMPT_Master_Glossary  Cross-unit combined glossary
PROMPT_Master_Formulas  Cross-unit combined formula sheet
PROMPT_Cumulative_Notes Full course study guide by theme
PROMPT_Cumulative_Exam  Full course practice exam

================================================================
SOURCE FILES — Upload These to NotebookLM
================================================================

PREFIX              | RENAMED FILE                    | CONTENTS
--------------------|---------------------------------|---------
[rows populated after file rename pass]

================================================================
GENERATED NOTES — Track Progress Here
================================================================

Check off each note as you save it inside NotebookLM.

UNIT 1
  [ ] NOTES_U1_Extraction
  [ ] NOTES_U1_Key_Concepts
  [ ] NOTES_U1_Glossary
  [ ] NOTES_U1_Formulas
  [ ] NOTES_U1_Slide_Deck_Outline
  [ ] NOTES_U1_Study_Notes
  [ ] NOTES_U1_Practice_Quiz

[REPEAT BLOCK FOR EACH UNIT]

CROSS-UNIT REVIEW
  [ ] REVIEW_Master_Concept_Map
  [ ] REVIEW_Master_Glossary
  [ ] REVIEW_Master_Formulas
  [ ] REVIEW_Weak_Spot_Report
  [ ] REVIEW_Final_Slide_Deck_Outline
  [ ] REVIEW_Cumulative_Study_Notes
  [ ] REVIEW_Cumulative_Practice_Exam

================================================================
FLAGS
================================================================

AMBIGUOUS FILES: [populate after file review]
MISSING SOURCES: [populate after file review]
NOTES: [any class-specific notes]
```
