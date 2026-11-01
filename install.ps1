$ErrorActionPreference = 'Stop'
$src = Join-Path $PSScriptRoot 'skills'
# .claude = Claude Code; .agents = Codex, Gemini CLI, Copilot and other Agent Skills tools
foreach ($dest in "$env:USERPROFILE\.claude\skills", "$env:USERPROFILE\.agents\skills") {
    New-Item -ItemType Directory -Force $dest | Out-Null
    Copy-Item "$src\*" $dest -Recurse -Force
}
New-Item -ItemType Directory -Force "$env:USERPROFILE\.claude\agents" | Out-Null
Copy-Item "$src\ten-second-rule\clueless-viewer.md" "$env:USERPROFILE\.claude\agents" -Force
Write-Host "Installed. Fully close and reopen your AI app, then type / and pick handoff, ten-second-rule or skill-builder."
