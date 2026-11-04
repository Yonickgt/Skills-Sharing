#!/bin/bash
set -e
cd "$(dirname "$0")"
mkdir -p ~/.claude/skills
cp -R skills/. ~/.claude/skills/
# ten-second-rule needs its "clueless viewer" helper in the agents folder
mkdir -p ~/.claude/agents
cp skills/ten-second-rule/clueless-viewer.md ~/.claude/agents/
echo "Installed. Fully quit and reopen Claude, then type / and pick handoff, ten-second-rule, skill-builder or skill-template."
