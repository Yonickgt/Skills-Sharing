$ErrorActionPreference = 'Stop'
$dest = "$env:USERPROFILE\.claude\skills"
New-Item -ItemType Directory -Force $dest | Out-Null
Copy-Item "$PSScriptRoot\skills\*" $dest -Recurse -Force
Write-Host "Installed. Fully close and reopen Claude, then type / and pick handoff, skill-builder or skill-template."
