# NotebookLM Study Skill

A Claude Code skill that builds a complete, structured study system for any class using Google NotebookLM. Answer 7 intake questions and receive a ready-to-upload zip package of markdown files — master index, system prompt, and 15 reusable prompt files tailored to your course.

---

## Installation

### Option 1 — Install via Claude (recommended)

Paste either of the following into any Claude Code session:

```
Install this skill: https://github.com/lrdmora/notebooklm-study-skill
```

Claude will ask:
> "I'm ready to install the NotebookLM Study Skill at your global Claude skills folder (`~/.claude/skills/`). Would you prefer a local project install (`.claude/skills/` inside your current project) instead?"

- **Global install** — skill is available in every Claude Code session on this machine
- **Local install** — skill is scoped to a single project folder

Claude handles the rest automatically.

### Option 2 — Manual install

**Windows (PowerShell):**
```powershell
.\install.ps1
```

**Mac / Linux:**
```bash
bash install.sh
```

Both scripts ask the same global vs. local question before installing.

---

## Trigger Phrase

Once installed, activate the skill with any natural phrasing:

> *"I want to set up a NotebookLM for my class"*
> *"Set up NotebookLM for Biology 101"*
> *"Make a study notebook for my chemistry class"*

---

## How It Works

### 1. Intake Interview (7 questions)

Claude asks these in order before generating anything:

| # | Question |
|---|----------|
| Q1 | What is the name of the class? |
| Q2 | Is the class organized by units, chapters, or both? |
| Q3 | How many units? *(if applicable)* |
| Q4 | How many chapters? *(if applicable)* |
| Q5 | Does the class involve formulas? (YES / NO) |
| Q6 | Do you have a syllabus, sample tests, or grading weights? |
| Q7 | Will you give folder access to your source files, or list them manually? |

If you volunteer information early, Claude notes it and skips that question.

### 2. Package Confirmation

Claude shows a summary of every file it will generate and waits for your confirmation before proceeding.

### 3. Generated Package

Claude writes all files and zips them for download. Upload the zip contents directly to NotebookLM as sources.

---

## What Gets Generated

**Upload these to NotebookLM as sources:**

| File | Purpose |
|------|---------|
| `00_MASTER_INDEX.md` | Central index — NotebookLM reads this before every response |
| `SYSTEM_PROMPT.md` | Paste contents into the NotebookLM instructions panel |
| `PROMPT_Extraction.md` | Full 5-section extraction pass for any unit |
| `PROMPT_Index.md` | Audits your notebook sources and rebuilds the master index |
| `PROMPT_Key_Concepts.md` | Hierarchical concept outline |
| `PROMPT_Glossary.md` | Prioritized glossary with cross-references |
| `PROMPT_Formulas.md` | Formula sheet *(omitted if no formulas)* |
| `PROMPT_Slide_Deck.md` | Slide deck outline |
| `PROMPT_Study_Notes.md` | Narrative study guide |
| `PROMPT_Practice_Quiz.md` | Practice quiz with answer key |
| `PROMPT_Flashcards.md` | Flashcard set |
| `PROMPT_Weak_Spot.md` | Gap analysis — finds what you don't know yet |
| `PROMPT_Concept_Map.md` | Visual concept map structure |
| `PROMPT_Master_Glossary.md` | Cross-unit combined glossary |
| `PROMPT_Master_Formulas.md` | Cross-unit formula sheet *(omitted if no formulas)* |
| `PROMPT_Cumulative_Notes.md` | Full course study guide organized by theme |
| `PROMPT_Cumulative_Exam.md` | Full cumulative practice exam with answer key |

**Keep this for yourself — do not upload:**

| File | Purpose |
|------|---------|
| `SETUP_GUIDE.md` | Step-by-step walkthrough of the full workflow |

---

## Using the Prompts

Every PROMPT_ file uses `[UNIT X]`, `[CHAPTER X]`, or `[SCOPE]` as placeholders. You fill in the scope when invoking:

> *"Use PROMPT_Slide_Deck for Unit 1"*
> *"Use PROMPT_Flashcards for Chapter 3"*
> *"Use PROMPT_Cumulative_Exam for the full course"*

---

## PROMPT_Index Workflow

`PROMPT_Index` is a pure auditor — it does not merge indexes itself. The workflow:

1. In NotebookLM, invoke: *"Use PROMPT_Index"*
2. NotebookLM generates an updated index output
3. Save that output as a Note inside NotebookLM
4. Paste the Note content into Claude
5. Claude merges it into your `00_MASTER_INDEX.md`
6. Re-upload the updated `00_MASTER_INDEX.md` to NotebookLM

---

## Reference Docs

The `docs/` folder contains downloadable guides:

- `NotebookLM_QuickStart_Guide.html` / `.pdf` — getting started walkthrough
- `NotebookLM_Prompts_Reference.html` / `.pdf` — complete prompt reference

---

## File Structure

```
notebooklm-study-skill/
├── README.md
├── SKILL.md
├── install.ps1
├── install.sh
├── references/
│   ├── 01_intake_and_index.md
│   ├── 02_system_prompt.md
│   ├── 03_unit_workflow.md
│   ├── 04_crossunit_workflow.md
│   ├── 05_file_naming.md
│   ├── 06a_prompt_files_unit.md
│   ├── 06b_prompt_files_crossunit.md
│   ├── 06c_prompt_files_unit2.md
│   └── 06d_prompt_index.md
├── docs/
│   ├── NotebookLM_QuickStart_Guide.html
│   ├── NotebookLM_QuickStart_Guide.pdf
│   ├── NotebookLM_Prompts_Reference.html
│   └── NotebookLM_Prompts_Reference.pdf
└── example-output/
    └── README.md
```

---

## License

MIT — free to use, modify, and share.
