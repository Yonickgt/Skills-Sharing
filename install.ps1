$ErrorActionPreference = 'Stop'
$dest = "$env:USERPROFILE\.claude\skills"
New-Item -ItemType Directory -Force $dest | Out-Null
Copy-Item "$PSScriptRoot\skills\*" $dest -Recurse -Force
# ten-second-rule needs its "clueless viewer" helper in the agents folder
New-Item -ItemType Directory -Force "$env:USERPROFILE\.claude\agents" | Out-Null
Copy-Item "$PSScriptRoot\skills\ten-second-rule\clueless-viewer.md" "$env:USERPROFILE\.claude\agents" -Force
Write-Host "Installed. Fully close and reopen Claude, then type / and pick handoff, ten-second-rule, skill-builder or skill-template."
