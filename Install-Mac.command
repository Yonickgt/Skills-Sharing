#!/bin/bash
cd "$(dirname "$0")"
mkdir -p ~/.claude/skills ~/.claude/agents
cp -R skills/. ~/.claude/skills/
cp agents/. ~/.claude/agents/ -R
echo "Installed. Fully quit and reopen Claude, then type / and pick handoff or ten-second-rule."
