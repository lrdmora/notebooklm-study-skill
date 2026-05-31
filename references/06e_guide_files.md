# Reference 06e — GUIDE_ File Templates
## GUIDE_Prompt_Builder

This file contains the GUIDE_Prompt_Builder template.
Generate it as a separate MD file with [CLASS NAME] filled in.
This file is always included in the generated package and uploaded to NotebookLM as a source.

---

## GUIDE_Prompt_Builder.md

```
GUIDE_Prompt_Builder — [CLASS NAME]

Use this guide when the user asks you to create a new PROMPT_ file.
Invocation: "Use GUIDE_Prompt_Builder to make me a prompt that does X"

You will generate a complete, ready-to-use PROMPT_ file following the
structure and conventions of this notebook's existing prompt system.

---

STEP 1 — UNDERSTAND THE REQUEST

Identify:
- WHAT the prompt should produce (output type: outline, quiz, guide, table, etc.)
- SCOPE it operates on (single unit, chapter, or full course)
- SOURCES it should draw from (DATA_, VOCAB_, FORMULAS_, REF_, NOTES_, REVIEW_)

If any of these are unclear, ask one clarifying question before proceeding.

---

STEP 2 — NAME THE FILE

Follow this convention:
  PROMPT_[DescriptiveName].md

Name should be:
- Title case, underscores between words
- Specific enough to be self-explanatory
- Consistent with existing names (PROMPT_Extraction, PROMPT_Flashcards, etc.)

---

STEP 3 — WRITE THE PROMPT FILE

Use this structure exactly:

PROMPT_[Name] — [CLASS NAME]

[One sentence describing what this prompt produces and when to use it.]

Sources: [Which sources to draw from, in priority order. Reference
00_MASTER_INDEX prefix system. Always check for NOTES_ files first
before falling back to raw DATA_ sources.]

[SCOPE LABEL — e.g., UNIT SCOPE / FULL COURSE / CHAPTER SCOPE]:
[Instructions for that scope. Be explicit about format, depth,
ordering, and what to include vs. omit.]

[Add additional scope labels if the prompt works at multiple levels.]

Save as: [NOTES_U[X]_Name / NOTES_C[X]_Name / REVIEW_Name — whichever applies]

---

STEP 4 — VERIFY AGAINST EXISTING PROMPTS

Before outputting, check:
- Does a prompt already exist that covers this? If so, say so and
  suggest invoking the existing one instead, or extending it.
- Does the source resolution match the prefix system in 00_MASTER_INDEX?
- Is the save-as name consistent with NOTES_U[#]_ or REVIEW_ conventions?

---

STEP 5 — OUTPUT AND INSTRUCT

Output the complete prompt file contents.
Then tell the user:
1. What to name the file (PROMPT_[Name].md)
2. To add it as a source in NotebookLM
3. To add it to 00_MASTER_INDEX under PROMPT FILES

---

EXAMPLES OF VALID INVOCATIONS

"Use GUIDE_Prompt_Builder to make me a prompt that compares
 topics across all units in a table"

"Use GUIDE_Prompt_Builder to make me a prompt that generates
 a one-page cheat sheet for a unit"

"Use GUIDE_Prompt_Builder to make me a prompt that quizzes me
 only on formula application"
```
