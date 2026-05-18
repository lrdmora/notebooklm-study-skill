# Reference 05 — File Naming & Prefix System

---

## SOURCE FILE PREFIXES — User Uploads These

| Prefix | Content | Notes |
|--------|---------|-------|
| DATA_U[#]_ | Textbook / study material by unit | Primary content |
| DATA_C[#]_ | Textbook / study material by chapter | Use with DATA_U if both |
| VOCAB_U[#]_ | Glossary by unit | The anchor — every term is testable |
| VOCAB_C[#]_ | Glossary by chapter | Use with VOCAB_U if both |
| FORMULAS_U[#]_ | Formula sheet by unit | Skip if no formulas |
| FORMULAS_C[#]_ | Formula sheet by chapter | Skip if no formulas |
| REF_ | Syllabus, weights, sample tests | Upload once, shared across all units |
| 00_MASTER_INDEX | Index of all sources and notes | Always upload — read before every response |
| PROMPT_[NAME] | Reusable prompt instructions | Upload all, invoke by name |

---

## PROMPT_ FILES — Upload All, Invoke by Name

| File | Purpose | Scope |
|------|---------|-------|
| PROMPT_Extraction | Full 5-section extraction pass | Unit or chapter |
| PROMPT_Key_Concepts | Hierarchical concept outline | Unit, chapter, or full course |
| PROMPT_Glossary | Prioritized glossary with cross-reference | Unit, chapter, or full course |
| PROMPT_Formulas | Formula sheet with vocab cross-reference | Unit, chapter, or full course |
| PROMPT_Slide_Deck | Slide deck outline | Unit, chapter, or full course |
| PROMPT_Study_Notes | Narrative study guide | Unit, chapter, or full course |
| PROMPT_Practice_Quiz | Practice quiz with answer key | Unit, chapter, or full course |
| PROMPT_Flashcards | Flashcard set | Unit, chapter, or full course |
| PROMPT_Weak_Spot | Gap analysis | Unit or full course |
| PROMPT_Concept_Map | Concept map | Unit or full course |
| PROMPT_Master_Glossary | Cross-unit combined glossary | Full course only |
| PROMPT_Master_Formulas | Cross-unit combined formula sheet | Full course only |
| PROMPT_Cumulative_Notes | Full course study guide by theme | Full course only |
| PROMPT_Cumulative_Exam | Full course practice exam | Full course only |

---

## GENERATED NOTE TITLES — Saved Inside NotebookLM

### Per-Unit Notes

| Title | Created By | Purpose |
|-------|-----------|---------|
| NOTES_U[#]_Extraction | PROMPT_Extraction | Foundation — feeds all other unit notes |
| NOTES_U[#]_Key_Concepts | PROMPT_Key_Concepts | Concept outline |
| NOTES_U[#]_Glossary | PROMPT_Glossary | Prioritized glossary |
| NOTES_U[#]_Formulas | PROMPT_Formulas | Formula sheet |
| NOTES_U[#]_Slide_Deck_Outline | PROMPT_Slide_Deck | Slide deck outline |
| NOTES_U[#]_Study_Notes | PROMPT_Study_Notes | Narrative study guide |
| NOTES_U[#]_Practice_Quiz | PROMPT_Practice_Quiz | Practice quiz |

### Cross-Unit Review Notes

| Title | Created By | Purpose |
|-------|-----------|---------|
| REVIEW_Master_Concept_Map | PROMPT_Concept_Map | Full course concept map |
| REVIEW_Master_Glossary | PROMPT_Master_Glossary | Combined glossary |
| REVIEW_Master_Formulas | PROMPT_Master_Formulas | Combined formula sheet |
| REVIEW_Weak_Spot_Report | PROMPT_Weak_Spot | Gap analysis |
| REVIEW_Final_Slide_Deck_Outline | PROMPT_Slide_Deck | Full course slide deck |
| REVIEW_Cumulative_Study_Notes | PROMPT_Cumulative_Notes | Full course study guide |
| REVIEW_Cumulative_Practice_Exam | PROMPT_Cumulative_Exam | Full course practice exam |

---

## NAMING RULES

- Underscores only — no spaces, no hyphens
- Keep names concise — they appear as source labels in NotebookLM
- Replace [#] with the actual number — e.g. NOTES_U1_Extraction
- 00_MASTER_INDEX always uses that exact name
- REF_ files can have a descriptor — e.g. REF_Syllabus, REF_Sample_Exam

---

## INVOCATION SYNTAX

User tells the system which prompt and which scope:

  "Use PROMPT_Slide_Deck for Unit 1"
  "Use PROMPT_Flashcards for Chapter 3"
  "Use PROMPT_Extraction for Unit 2"
  "Use PROMPT_Cumulative_Exam for the full course"
  "Use PROMPT_Weak_Spot for Unit 4"
  "Use PROMPT_Practice_Quiz for Chapter 1 and Chapter 2"
