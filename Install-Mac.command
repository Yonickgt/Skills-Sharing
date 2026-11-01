#!/bin/bash
set -e
cd "$(dirname "$0")"
# .claude = Claude Code; .agents = Codex, Gemini CLI, Copilot and other Agent Skills tools
for dest in ~/.claude/skills ~/.agents/skills; do
  mkdir -p "$dest"
  cp -R skills/. "$dest/"
done
mkdir -p ~/.claude/agents
cp skills/ten-second-rule/clueless-viewer.md ~/.claude/agents/
echo "Installed. Fully quit and reopen your AI app, then type / and pick handoff, ten-second-rule or skill-builder."
