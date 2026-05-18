# Reference 03 — Unit Setup Workflow (Phase 2)
## The recommended order for setting up each unit using the PROMPT_ files

---

## UNIT SETUP ORDER

Run these in order for every unit. Save each output as a Note
with the exact title shown before moving to the next step.

| Step | Invoke | Save As |
|------|--------|---------|
| 1 | "Use PROMPT_Extraction for Unit X" | NOTES_UX_Extraction |
| 2 | "Use PROMPT_Key_Concepts for Unit X" | NOTES_UX_Key_Concepts |
| 3 | "Use PROMPT_Glossary for Unit X" | NOTES_UX_Glossary |
| 4 | "Use PROMPT_Formulas for Unit X" | NOTES_UX_Formulas |
| 5 | "Use PROMPT_Slide_Deck for Unit X" | NOTES_UX_Slide_Deck_Outline |
| 6 | "Use PROMPT_Study_Notes for Unit X" | NOTES_UX_Study_Notes |
| 7 | "Use PROMPT_Practice_Quiz for Unit X" | NOTES_UX_Practice_Quiz |

Skip Step 4 if the class has no formulas.
Replace X with the actual unit number throughout.

---

## RULES

- Always run Step 1 first — PROMPT_Extraction is the foundation
- Do not skip ahead — each step builds on the previous
- Save every output as a Note before moving on
- If NotebookLM offers to generate a slide deck from the outline, accept it
- If NotebookLM times out on PROMPT_Extraction, invoke it again and
  ask for one section at a time: "Use PROMPT_Extraction for Unit X,
  Section 2 only"

---

## PRE-FLIGHT — Confirm These Sources Are Uploaded Before Starting

- [ ] DATA_UX_ — Textbook / study material
- [ ] VOCAB_UX_ — Glossary
- [ ] FORMULAS_UX_ — Formula sheet (skip if no formulas)
- [ ] REF_ — Syllabus and sample questions (uploaded once)
- [ ] All PROMPT_ files
- [ ] 00_MASTER_INDEX
- [ ] SYSTEM_PROMPT contents pasted into instructions panel

---

## UNIT COMPLETION CHECKLIST

- [ ] NOTES_UX_Extraction
- [ ] NOTES_UX_Key_Concepts
- [ ] NOTES_UX_Glossary
- [ ] NOTES_UX_Formulas (if applicable)
- [ ] NOTES_UX_Slide_Deck_Outline
- [ ] NOTES_UX_Study_Notes
- [ ] NOTES_UX_Practice_Quiz

Repeat for every unit before starting Phase 3.

---

## OPTIONAL UNIT-LEVEL PROMPTS

These can be run any time after Step 1 is complete:

- "Use PROMPT_Flashcards for Unit X" — flashcard set for the unit
- "Use PROMPT_Weak_Spot for Unit X" — gap analysis for this unit only
- "Use PROMPT_Concept_Map for Unit X" — concept map for this unit
