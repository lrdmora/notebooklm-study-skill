# Reference 06b — Cross-Unit PROMPT_ File Templates
## PROMPT_Master_Glossary, Master_Formulas, Cumulative_Notes, Cumulative_Exam

These four prompts are full course scope only.
Generate each as a separate MD file with [CLASS NAME] filled in.
All other placeholders stay as-is.

---

## PROMPT_Master_Glossary.md

```
# PROMPT_Master_Glossary — [CLASS NAME]

Compile a master glossary for the full course.
Full course scope only. Run after all unit glossary notes exist.

Sources: All NOTES_U[#]_Glossary notes. If a unit note is missing,
pull from that unit's VOCAB source directly.

For each term:
TERM: [term]
DEFINITION: [definition]
UNITS: [every unit this term appears in]
EVOLUTION: [if in multiple units — one sentence on how meaning changes]
PRIORITY: HIGH / MEDIUM / LOW
CROSS-UNIT FLAG: YES if HIGH in two or more units

Sort alphabetically. End with a CROSS-UNIT HIGH PRIORITY section
listing only terms that are HIGH in two or more units. These are
the terms most likely to appear on the final exam.

Save as: REVIEW_Master_Glossary
```

---

## PROMPT_Master_Formulas.md

```
# PROMPT_Master_Formulas — [CLASS NAME]

Compile a master formula sheet for the full course.
Full course scope only. If the class has no formulas, say so and stop.
Run after all unit formula notes exist.

Sources: All NOTES_U[#]_Formulas notes. If a unit note is missing,
pull from that unit's FORMULAS source directly.

For each formula:
FORMULA: [name and expression]
WHAT IT SOLVES: [plain language]
VARIABLES: [define each]
UNIT: [which unit introduced it]
ALSO APPEARS IN: [other units where it is used]
VOCAB TERMS CONNECTED: [related terms from REVIEW_Master_Glossary]
REF FLAG: YES if appeared in any REF sample questions

End with a ranked list of formulas most likely on the final exam
based on REF frequency and cross-unit appearance.

Save as: REVIEW_Master_Formulas
```

---

## PROMPT_Cumulative_Notes.md

```
# PROMPT_Cumulative_Notes — [CLASS NAME]

Generate cumulative study notes for the full course.
Full course scope only. Run after all unit study notes exist.

If REVIEW_Master_Concept_Map does not exist, tell the user to run
PROMPT_Concept_Map for the full course first.

Sources: All NOTES_U[#]_Study_Notes and REVIEW_Master_Concept_Map.

Requirements:
- Write in clear plain language — this is what the student reads
  the night before the final exam
- Organize by core theme from the concept map, not by unit number
- Cover every HIGH priority concept from every unit
- Where a concept evolves across units, explain that progression
  once in one place — do not repeat it per unit
- Include all CROSS-UNIT HIGH PRIORITY vocab terms with definitions
- Reference formulas inline where they apply to a concept
- End with a one-page course summary: the 10 most important things
  to know walking into the final exam

Save as: REVIEW_Cumulative_Study_Notes
```

---

## PROMPT_Cumulative_Exam.md

```
# PROMPT_Cumulative_Exam — [CLASS NAME]

Generate a full cumulative practice exam.
Full course scope only. Run this last — after all REVIEW_ notes exist.

Sources: REVIEW_Cumulative_Study_Notes, REVIEW_Master_Glossary,
REVIEW_Master_Formulas, and all REF_ sources.

Requirements:
- 80% multiple choice, 15% short answer, 5% essay
- Every unit must be represented
- Weight toward units with more REF coverage and higher cross-unit overlap
- All CROSS-UNIT HIGH PRIORITY terms must appear
- At least one formula application question per unit with formulas
- Essays must synthesize across at least two units — no single-unit essays

Full answer key including:
- Correct answer and explanation for every MC question
- Model answer for every short answer question
- Scoring rubric for every essay (3/2/1/0 point scale)
- Source citation for every answer

Output format:
CUMULATIVE PRACTICE EXAM — [CLASS NAME]

SECTION 1: MULTIPLE CHOICE ([#] questions)
SECTION 2: SHORT ANSWER ([#] questions)
SECTION 3: ESSAY ([#] questions)

ANSWER KEY
[complete answers, explanations, rubrics, citations]

Save as: REVIEW_Cumulative_Practice_Exam
```
