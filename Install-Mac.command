#!/bin/bash
set -e
cd "$(dirname "$0")"
mkdir -p ~/.claude/skills
cp -R skills/. ~/.claude/skills/
echo "Installed. Fully quit and reopen Claude, then type / and pick handoff, skill-builder or skill-template."
