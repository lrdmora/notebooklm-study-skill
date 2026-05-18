# Reference 06a — Unit-Level PROMPT_ File Templates
## PROMPT_Extraction, Key_Concepts, Glossary, Formulas

Generate each section below as a separate MD file.
Replace [CLASS NAME] with the actual class name.
All [UNIT X], [CHAPTER X], [SCOPE] placeholders stay as-is.
See 06b for cross-unit prompt templates.

---

## PROMPT_Extraction.md

```
# PROMPT_Extraction — [CLASS NAME]

Run a full 5-section extraction pass on the unit or chapter the user
specifies. Complete all sections in order. If output is too long,
offer to run one section at a time.

---

SOURCE RESOLUTION — Read this before starting

Find your sources using this priority order:

1. Check 00_MASTER_INDEX for the correct source name for this scope
2. Look for a source prefixed DATA_U[X]_ or DATA_C[X]_ for this scope
3. If no prefixed source exists, search all available sources for
   content matching the unit or chapter the user specified —
   look for chapter headings, unit markers, or table of contents
   entries that match the scope
4. For VOCAB: look for VOCAB_U[X]_, VOCAB_C[X]_, or any source
   containing a glossary, key terms list, or vocabulary section
5. For FORMULAS: look for FORMULAS_U[X]_, FORMULAS_C[X]_, or any
   source containing formulas, equations, or formula sheets
6. For REF: look for any source prefixed REF_, or any source that
   appears to be a syllabus, sample test, or practice exam

If you cannot locate a source for a required section, state clearly
what is missing and continue with what is available. Do not stop.

---

SECTION 1 — KEY CONCEPTS OUTLINE

Read the DATA source for the specified scope and produce a
hierarchical numbered outline of every major concept.
Mirror the textbook's header and subheader structure.
If the source is an unprefixed textbook, use the chapter or unit
number the user specified to locate the correct section.

Format:
1. [Major Topic]
   - [Sub-concept]
   - [Sub-concept]

---

SECTION 2 — GLOSSARY CROSS-REFERENCE

Find the vocabulary or glossary source and locate each term in
the DATA source. If no dedicated VOCAB source exists, extract
key terms directly from the DATA source — look for bolded terms,
italicized terms, defined terms, and terms in callout boxes.

For each term produce:
TERM | DEFINITION | CONTEXT (from DATA, 1-3 sentences) |
FORMULA LINK | PRIORITY (HIGH/MEDIUM/LOW)
HIGH = defined + explained in DATA + appears in REF questions
MEDIUM = defined + explained in DATA, not in REF
LOW = found in source but little explanation available

List HIGH first, MEDIUM second, LOW last. End with GAPS section.
Note if terms were extracted from DATA directly vs a VOCAB source.

---

SECTION 3 — FORMULA CROSS-REFERENCE

Find the formula source. If no dedicated FORMULAS source exists,
scan the DATA source for equations, formulas, or mathematical
expressions and extract them.

For each formula produce:
FORMULA | WHAT IT SOLVES | VARIABLES | VOCAB TERMS CONNECTED |
DATA EXAMPLE | REF FLAG (YES/NO)

If no formulas are found in any source, write:
"No formula source or formula content found — skipping Section 3."

---

SECTION 4 — TEXTBOOK SIGNALS SCAN

Re-read the DATA source and extract everything the author has
visually or structurally emphasized:

- Italicized or bold terms not already captured in Section 2
- Callout boxes, sidebars, highlighted or shaded blocks
- Worked examples (concept + brief description)
- End of chapter or end of unit review questions
- Author flagged reminders — "note", "remember", warnings, tips

---

SECTION 5 — SUMMARY AND PRIORITY LIST

- CORE THEMES: 2-3 sentences on what this scope is about
- TOP 10 STUDY PRIORITIES: ranked with reason for each
- FOUNDATIONAL TERMS FROM PREVIOUS UNITS: how they connect here
- MATERIAL GAPS: terms or concepts with thin source coverage
- EXAM INTELLIGENCE: topics flagged by REF sources if available
- SOURCE NOTE: list exactly which sources were used for each
  section and flag any section where a source was missing

Save as: NOTES_U[X]_Extraction or NOTES_C[X]_Extraction
```

---

## PROMPT_Key_Concepts.md

```
# PROMPT_Key_Concepts — [CLASS NAME]

Generate a clean hierarchical key concepts outline for the unit,
chapter, or scope the user specifies.

Sources: Use NOTES_[SCOPE]_Extraction if it exists. Otherwise pull
from the DATA source for the scope. For full course use all
NOTES_U[#]_Key_Concepts notes.

Format as a numbered hierarchical outline. Bold HIGH priority items.
Flag formula-connected items with [FORMULA]. Include every concept.

Save as: NOTES_U[X]_Key_Concepts / NOTES_C[X]_Key_Concepts /
REVIEW_Key_Concepts_Overview
```

---

## PROMPT_Glossary.md

```
# PROMPT_Glossary — [CLASS NAME]

Generate a full prioritized glossary for the unit, chapter, or
scope the user specifies.

Sources: Use NOTES_[SCOPE]_Extraction if it exists. Otherwise pull
from VOCAB and DATA for the scope. For full course use all
NOTES_U[#]_Glossary notes.

For each term: TERM | DEFINITION | CONTEXT (1 sentence from DATA) |
FORMULA LINK | PRIORITY (HIGH/MEDIUM/LOW) | UNITS (full course only)

Sort: HIGH first, MEDIUM second, LOW last. End with GAPS section.
Full course: add CROSS-UNIT HIGH PRIORITY section at the end.

Save as: NOTES_U[X]_Glossary / NOTES_C[X]_Glossary /
REVIEW_Master_Glossary
```

---

## PROMPT_Formulas.md

```
# PROMPT_Formulas — [CLASS NAME]

Generate a formula reference sheet for the unit, chapter, or scope
the user specifies. If no FORMULAS source exists, say so and stop.

Sources: Use NOTES_[SCOPE]_Extraction if it exists. Otherwise pull
from FORMULAS and DATA for the scope. For full course use all
NOTES_U[#]_Formulas notes.

For each formula: FORMULA | WHAT IT SOLVES | VARIABLES |
VOCAB TERMS CONNECTED | WORKED EXAMPLE | REF FLAG (YES/NO)
For full course: also include UNIT and ALSO APPEARS IN fields.
End with ranked list of most exam-likely formulas.

Save as: NOTES_U[X]_Formulas / NOTES_C[X]_Formulas /
REVIEW_Master_Formulas
```

---
