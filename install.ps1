$ErrorActionPreference = 'Stop'
$claude = Join-Path $env:USERPROFILE '.claude'
New-Item -ItemType Directory -Force "$claude\skills", "$claude\agents" | Out-Null
Copy-Item "$PSScriptRoot\skills\*" "$claude\skills" -Recurse -Force
Copy-Item "$PSScriptRoot\agents\*" "$claude\agents" -Force
Write-Host "Installed. Fully close and reopen Claude, then type / and pick handoff or ten-second-rule."
