#!/usr/bin/env bash
# NotebookLM Study Skill — Installer (Mac / Linux)

REPO="https://github.com/lrdmora/notebooklm-study-skill"
SKILL_NAME="notebooklm-study-skill"

echo ""
echo "NotebookLM Study Skill Installer"
echo "---------------------------------"
echo ""
echo "I'm ready to install the NotebookLM Study Skill at your global"
echo "Claude skills folder (~/.claude/skills/)."
echo ""
echo "Would you prefer a local project install instead?"
echo "  [G] Global install  — available in all Claude Code sessions (recommended)"
echo "  [L] Local install   — scoped to this project folder only"
echo ""
read -rp "Enter G or L: " choice

case "${choice^^}" in
    G)
        TARGET="$HOME/.claude/skills/$SKILL_NAME"
        echo ""
        echo "Installing globally to: $TARGET"
        git clone "$REPO" "$TARGET"
        ;;
    L)
        TARGET=".claude/skills/$SKILL_NAME"
        echo ""
        echo "Installing locally to: $TARGET"
        mkdir -p ".claude/skills"
        git clone "$REPO" "$TARGET"
        ;;
    *)
        echo "Invalid choice. Please run the script again and enter G or L."
        exit 1
        ;;
esac

if [ $? -eq 0 ]; then
    echo ""
    echo "NotebookLM Study Skill installed successfully."
    echo ""
    echo "Trigger it in Claude by saying:"
    echo "  'I want to set up a NotebookLM for my class'"
    echo ""
else
    echo ""
    echo "Installation failed. Make sure git is installed and try again."
    exit 1
fi
