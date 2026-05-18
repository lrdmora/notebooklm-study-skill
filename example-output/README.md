# Example Output — What a Generated Class Package Looks Like

When you run the NotebookLM Study Skill for a class, Claude generates a zip folder named `[classname]-notebooklm/`. Here is what that package contains.

---

## Example Invocation

```
"I want to set up a NotebookLM for my class"
```

After the 7-question intake interview and your confirmation, Claude generates all files below.

---

## Generated Files (15–17 files depending on formulas)

### Core Files

| File | Description |
|------|-------------|
| `00_MASTER_INDEX.md` | Central index uploaded as a NotebookLM source. The system reads this before every response to understand how your knowledge base is organized. Contains your prefix system, prompt file list, source file table, progress tracker, and flags. |
| `SYSTEM_PROMPT.md` | Paste the contents of this file into NotebookLM's instructions panel (not as a source). Sets the AI's behavior, tone, and awareness of your notebook structure. |
| `SETUP_GUIDE.md` | Step-by-step walkthrough for the full workflow — Phase 1 (setup), Phase 2 (unit by unit), Phase 3 (final exam prep). Keep this for yourself; do not upload to NotebookLM. |

### Unit-Level PROMPT_ Files

Invoke these per unit or chapter: *"Use PROMPT_Slide_Deck for Unit 1"*

| File | Description |
|------|-------------|
| `PROMPT_Extraction.md` | Full 5-section extraction pass: key concepts, glossary, formulas, connections, and gaps. Run this first for each unit. |
| `PROMPT_Key_Concepts.md` | Hierarchical concept outline with priority ratings. |
| `PROMPT_Glossary.md` | Prioritized glossary with cross-unit references. |
| `PROMPT_Formulas.md` | Formula sheet with variable definitions and vocab cross-references. *(Omitted if you answered NO to formulas during intake.)* |
| `PROMPT_Slide_Deck.md` | Structured slide deck outline for the unit. |
| `PROMPT_Study_Notes.md` | Narrative study guide written in plain language. |
| `PROMPT_Practice_Quiz.md` | Practice quiz with full answer key and source citations. |
| `PROMPT_Flashcards.md` | Flashcard set ready for review. |
| `PROMPT_Weak_Spot.md` | Gap analysis — identifies what you don't know yet and what to review. |
| `PROMPT_Concept_Map.md` | Concept map showing relationships between ideas in the unit. |

### Cross-Unit PROMPT_ Files

Invoke these after all units are complete: *"Use PROMPT_Cumulative_Exam for the full course"*

| File | Description |
|------|-------------|
| `PROMPT_Index.md` | Audits all sources in your notebook and rebuilds or repairs `00_MASTER_INDEX.md`. Run this whenever you add new files. |
| `PROMPT_Master_Glossary.md` | Compiles a combined glossary across all units with cross-unit frequency and priority flags. |
| `PROMPT_Master_Formulas.md` | Compiles a combined formula sheet across all units. *(Omitted if no formulas.)* |
| `PROMPT_Cumulative_Notes.md` | Full course study guide organized by theme (not by unit number). |
| `PROMPT_Cumulative_Exam.md` | Full cumulative practice exam: 80% MC, 15% short answer, 5% essay. Complete answer key with rubrics and source citations. |

---

## Example 00_MASTER_INDEX Structure

```
MASTER INDEX — Biology 101

PREFIX SYSTEM
  DATA_U1_   Unit 1 textbook and lecture materials
  VOCAB_U1_  Unit 1 glossary sources
  REF_       Syllabus, sample tests

PROMPT FILES
  PROMPT_Extraction, PROMPT_Key_Concepts, PROMPT_Glossary ...

SOURCE FILES
  DATA_U1_Chapter1.pdf
  DATA_U1_LectureSlides_Week1.pdf
  REF_Syllabus.pdf

GENERATED NOTES
UNIT 1
  [x] NOTES_U1_Extraction
  [x] NOTES_U1_Key_Concepts
  [ ] NOTES_U1_Glossary
  ...

FLAGS
  AMBIGUOUS FILES: none
  MISSING SOURCES: VOCAB_U1_ not yet uploaded
```

---

## Example SYSTEM_PROMPT.md Note

```
You are a study assistant for Biology 101.

Your knowledge base is organized using a prefix system. The file
00_MASTER_INDEX.md describes every source and note in this notebook.
Read it before responding to any question.

When the user invokes a PROMPT_ file, follow its instructions exactly.
Do not summarize, paraphrase, or skip sections.

Tone: clear, plain language. No filler. Prioritize accuracy over brevity.
```

---

## Notes on PROMPT_Formulas and PROMPT_Master_Formulas

These two files are **omitted from the generated package** if you answered **NO** to the formulas question during intake. Classes with no formulas (history, English literature, political science) do not receive these files. If your class has formulas in some units but not others, answer YES — the prompts handle missing formula content gracefully.
