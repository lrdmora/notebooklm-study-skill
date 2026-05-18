# NotebookLM Study Skill — Installer (Windows PowerShell)

$REPO = "https://github.com/YOUR-GITHUB-USERNAME/notebooklm-study-skill"
$SKILL_NAME = "notebooklm-study-skill"

Write-Host ""
Write-Host "NotebookLM Study Skill Installer" -ForegroundColor Cyan
Write-Host "---------------------------------"
Write-Host ""
Write-Host "I'm ready to install the NotebookLM Study Skill at your global"
Write-Host "Claude skills folder (~/.claude/skills/)."
Write-Host ""
Write-Host "Would you prefer a local project install instead?"
Write-Host "  [G] Global install  — available in all Claude Code sessions (recommended)"
Write-Host "  [L] Local install   — scoped to this project folder only"
Write-Host ""

$choice = Read-Host "Enter G or L"

switch ($choice.ToUpper()) {
    "G" {
        $target = Join-Path $env:USERPROFILE ".claude\skills\$SKILL_NAME"
        Write-Host ""
        Write-Host "Installing globally to: $target" -ForegroundColor Green
        git clone $REPO $target
    }
    "L" {
        $target = ".claude\skills\$SKILL_NAME"
        Write-Host ""
        Write-Host "Installing locally to: $target" -ForegroundColor Green
        New-Item -ItemType Directory -Force ".claude\skills" | Out-Null
        git clone $REPO $target
    }
    default {
        Write-Host "Invalid choice. Please run the script again and enter G or L." -ForegroundColor Red
        exit 1
    }
}

if ($LASTEXITCODE -eq 0) {
    Write-Host ""
    Write-Host "NotebookLM Study Skill installed successfully." -ForegroundColor Green
    Write-Host ""
    Write-Host "Trigger it in Claude by saying:"
    Write-Host "  'I want to set up a NotebookLM for my class'" -ForegroundColor Yellow
    Write-Host ""
} else {
    Write-Host ""
    Write-Host "Installation failed. Make sure git is installed and try again." -ForegroundColor Red
}
