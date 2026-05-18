# Reference 06c — Unit-Level PROMPT_ File Templates (continued)
## PROMPT_Slide_Deck, Study_Notes, Practice_Quiz, Flashcards, Weak_Spot, Concept_Map

Continuation of 06a. Generate each section below as a separate MD file.
Replace [CLASS NAME] with the actual class name.

---

## PROMPT_Slide_Deck.md

```
# PROMPT_Slide_Deck — [CLASS NAME]

Generate a slide deck outline for the unit, chapter, or scope
the user specifies.

Sources: Use NOTES_[SCOPE]_Key_Concepts and NOTES_[SCOPE]_Glossary.
For full course use REVIEW_Master_Concept_Map, REVIEW_Master_Glossary,
and all NOTES_U[#]_Key_Concepts notes.

UNIT OR CHAPTER: One slide per HIGH concept. Each slide: title,
3-5 bullets, key term definition, formula reference if applicable.
Group MEDIUM concepts together. Final slide: Top 10 Study Priorities.

FULL COURSE: Opening slide (overview + themes). One section per unit
with title slide, one slide per HIGH concept, one slide for MEDIUM
concepts. Then: cross-unit connections, master formulas, CROSS-UNIT
HIGH terms, final slide with Top 20 exam-likely items.

If NotebookLM offers to generate the actual deck, accept it.

Save as: NOTES_U[X]_Slide_Deck_Outline / NOTES_C[X]_Slide_Deck_Outline
/ REVIEW_Final_Slide_Deck_Outline
```

---


---

## PROMPT_Practice_Quiz.md

```
# PROMPT_Practice_Quiz — [CLASS NAME]

Generate a practice quiz for the unit, chapter, or scope the user
specifies. Run this last — after Study_Notes and Glossary notes exist.

Sources: Use NOTES_[SCOPE]_Study_Notes, NOTES_[SCOPE]_Glossary, REF_.
For full course use all REVIEW_ notes plus REF_.

Distribution: 80% Multiple Choice / 15% Short Answer / 5% Essay

Weight: HIGH + CROSS-UNIT HIGH → all sections. MEDIUM → MC + SA only.
LOW → MC only. Formula-linked → always include one application question.

MC: 4 options, one correct, plausible distractors. Include answer
and explanation. SA: 2-4 sentences, include model answer.
Essay: claim/evidence/conclusion, rubric 3/2/1/0.
Full course essays must synthesize across at least two units.

Format: PRACTICE [QUIZ/EXAM] — [CLASS] — [SCOPE]
SECTION 1: MC / SECTION 2: SA / SECTION 3: ESSAY / ANSWER KEY

Save as: NOTES_U[X]_Practice_Quiz / NOTES_C[X]_Practice_Quiz /
REVIEW_Cumulative_Practice_Exam
```

---

## PROMPT_Flashcards.md

```
# PROMPT_Flashcards — [CLASS NAME]

Generate a flashcard set for the unit, chapter, or scope the user
specifies.

Sources: Use NOTES_[SCOPE]_Glossary if it exists. Otherwise pull
from VOCAB and DATA for the scope. For full course use
REVIEW_Master_Glossary.

For each card:
FRONT: [term, concept, or formula name]
BACK: [definition or answer from VOCAB or DATA]
PRIORITY: HIGH / MEDIUM / LOW
FORMULA: [expression if applicable, otherwise omit]
SOURCE: [source file name]
UNITS: [units this term appears in — full course only]

Order: HIGH first, MEDIUM second, LOW last (flag as gap cards).
Full course: mark CROSS-UNIT HIGH terms with [CROSS-UNIT] flag.
Always include the formula expression on the back for formula cards.

Note: FRONT/BACK format is compatible with Anki and Quizlet import.
```

---

## PROMPT_Weak_Spot.md

```
# PROMPT_Weak_Spot — [CLASS NAME]

Generate a gap analysis for the unit or scope the user specifies.

Sources: For unit scope use NOTES_[SCOPE]_Extraction. For full course
use all NOTES_U[#]_Extraction notes and all REF_ sources.

UNIT SCOPE:
1. Every term flagged LOW or GAP in this unit's extraction
2. Concepts in REF sample questions with thin DATA coverage here
3. Recommended resources or topics to research

FULL COURSE:
1. Every LOW or GAP term across all units — listed by unit
2. Concepts in REF questions with thin coverage across any unit
3. Any unit with significantly more gaps than others — flag it
4. Top 10 weak spots ranked by exam likelihood

Be direct. Surface what is underserved before exam day.

Save as: NOTES_U[X]_Weak_Spot / REVIEW_Weak_Spot_Report
```

---

## PROMPT_Concept_Map.md

```
# PROMPT_Concept_Map — [CLASS NAME]

Generate a concept map for the unit or scope the user specifies.

Sources: For unit scope use NOTES_[SCOPE]_Key_Concepts and
NOTES_[SCOPE]_Extraction. For full course use all
NOTES_U[#]_Key_Concepts notes.

UNIT SCOPE: Show how concepts in this unit connect. Flag foundational
concepts. Note which concepts carry forward to later units. Note
formula connections.

FULL COURSE: Identify 5-10 core themes across units. Show how each
unit connects to adjacent units. Trace concepts that grow in complexity
across units. Flag units that stand largely alone. Format as a
structured outline with themes as trunk and units as branches.

Save as: NOTES_U[X]_Concept_Map / REVIEW_Master_Concept_Map
```
