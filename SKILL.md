---
name: notebooklm-study-notebook
description: Build a complete NotebookLM study system for any class. Use this skill whenever a user wants to set up NotebookLM for studying, create a study notebook, organize class materials in NotebookLM, generate NotebookLM prompts or system prompts, build a master index, or create a structured study workflow. Trigger on phrases like "set up NotebookLM", "study notebook", "NotebookLM for my class", "organize my class files", "make a notebook for this class", or any mention of using NotebookLM to study. When triggered, run the intake interview first — do not generate any files until all required information is collected.
---

# NotebookLM Study Notebook Skill

Builds a complete, downloadable NotebookLM study system package for any class.
When triggered, run the intake interview to collect class details, then generate
a zip package of MD files the user uploads directly into NotebookLM.

---

## Install This Skill

If you were handed a GitHub URL or this file directly and asked to install this skill,
do the following **before anything else**:

1. Ask the user:
   > "I'm ready to install the NotebookLM Study Skill at your global Claude skills
   > folder (`~/.claude/skills/`). Would you prefer a local project install
   > (`.claude/skills/` inside your current project) instead?"

2. Wait for their answer.

3. Run the appropriate command:
   - **Global install:**
     ```
     git clone https://github.com/lrdmora/notebooklm-study-skill ~/.claude/skills/notebooklm-study-skill
     ```
   - **Local install:**
     ```
     git clone https://github.com/lrdmora/notebooklm-study-skill .claude/skills/notebooklm-study-skill
     ```

4. Confirm to the user:
   > "NotebookLM Study Skill installed. Trigger it anytime by saying:
   > *'I want to set up a NotebookLM for my class'*"

---

## Reference Index

| File | Contents | Read When |
|------|----------|-----------|
| `references/01_intake_and_index.md` | Intake interview questions and 00_MASTER_INDEX template | Always — read first |
| `references/02_system_prompt.md` | SYSTEM_PROMPT.md template | Generating the system prompt file |
| `references/03_unit_workflow.md` | Phase 2 unit setup workflow and checklist | User asks about unit setup process |
| `references/04_crossunit_workflow.md` | Phase 3 cross-unit review workflow | User asks about final exam prep process |
| `references/05_file_naming.md` | Complete prefix and naming reference | Any file naming question |
| `references/06a_prompt_files_unit.md` | Unit-level PROMPT_ templates: Extraction, Key_Concepts, Glossary, Formulas | Generating core unit PROMPT_ files |
| `references/06c_prompt_files_unit2.md` | Unit-level PROMPT_ templates: Slide_Deck, Study_Notes, Practice_Quiz, Flashcards, Weak_Spot, Concept_Map | Generating remaining unit PROMPT_ files |
| `references/06b_prompt_files_crossunit.md` | Cross-unit PROMPT_ templates: Master_Glossary, Master_Formulas, Cumulative_Notes, Cumulative_Exam | Generating cross-unit PROMPT_ files |
| `references/06d_prompt_index.md` | PROMPT_Index template — audits notebook sources and builds or repairs 00_MASTER_INDEX | Always include in generated package |
| `references/06e_guide_files.md` | GUIDE_Prompt_Builder template — generates new PROMPT_ files on demand | Always include in generated package |

---

## How This Skill Works

### Step 1 — Run the Intake Interview

Read `references/01_intake_and_index.md` and ask the user the intake questions.
Collect all answers before generating anything. Do not skip questions.
If the user volunteers information early, note it and skip that question.

### Step 2 — Confirm the Package

After the interview, show the user a summary:

```
Here is what I will generate for [CLASS NAME]:

UPLOAD FILES (add to NotebookLM as sources)
- 00_MASTER_INDEX.md
- SYSTEM_PROMPT.md
- GUIDE_Prompt_Builder.md
- PROMPT_Extraction.md
- PROMPT_Index.md
- PROMPT_Key_Concepts.md
- PROMPT_Glossary.md
[PROMPT_Formulas.md — included if formulas: YES]
- PROMPT_Slide_Deck.md
- PROMPT_Study_Notes.md
- PROMPT_Practice_Quiz.md
- PROMPT_Flashcards.md
- PROMPT_Weak_Spot.md
- PROMPT_Concept_Map.md
- PROMPT_Master_Glossary.md
[PROMPT_Master_Formulas.md — included if formulas: YES]
- PROMPT_Cumulative_Notes.md
- PROMPT_Cumulative_Exam.md

REFERENCE (for your own use — do not upload)
- SETUP_GUIDE.md — step-by-step setup instructions

Confirm and I will generate all files.
```

Wait for confirmation before proceeding.

### Step 3 — Generate All Files

Read `references/06a_prompt_files_unit.md` and `references/06c_prompt_files_unit2.md` for unit PROMPT_ templates.
Read `references/06b_prompt_files_crossunit.md` for cross-unit PROMPT_ templates.
Read `references/06e_guide_files.md` for the GUIDE_Prompt_Builder template.
Read `references/02_system_prompt.md` for the system prompt template.
Read `references/01_intake_and_index.md` for the master index template.

Generate every file with the user's class details filled in:
- Replace [CLASS NAME] with the actual class name throughout
- Replace [UNIT X] with the placeholder text "the unit or chapter you specify"
- Use [SCOPE] for prompts that work at unit, chapter, or full-course level
- Omit all FORMULAS files if the user answered NO to formulas
- Expand the GENERATED NOTES table in 00_MASTER_INDEX for the correct number of units

### Step 4 — Package and Deliver

Write all files to `/home/claude/[classname]-notebooklm/`
Zip the folder and present for download.
Include a brief plain-language note on what to do next:
1. Upload all files except SETUP_GUIDE.md to NotebookLM as sources
2. Copy the contents of SYSTEM_PROMPT.md into the NotebookLM instructions panel
3. Follow SETUP_GUIDE.md for the unit-by-unit workflow

---

## Output Rules

- Every PROMPT_ file uses [UNIT X], [CHAPTER X], or [SCOPE] as placeholders
- The user fills in the scope when invoking: "Use PROMPT_Slide_Deck for Unit 1"
- Never hardcode unit or chapter numbers into PROMPT_ files
- SYSTEM_PROMPT.md references 00_MASTER_INDEX by name — never embed the index
- All files are plain markdown — clean, no decorative formatting
- File names use exact naming convention — no variations
