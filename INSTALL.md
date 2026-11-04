# Install instructions (for AI assistants)

A user gave you this repository's link and asked you to install its skills. Each skill is a folder in `skills/` with a `SKILL.md` inside. Install all of them unless the user named specific ones.

Repo: `https://github.com/Yonickgt/Skills-Sharing`

## Steps

Covers Claude Code (including the Claude desktop app's Code tab), OpenAI Codex, Gemini CLI, GitHub Copilot CLI, and other agents.

1. Download the repo to a temporary folder:
   ```sh
   git clone --depth 1 https://github.com/Yonickgt/Skills-Sharing.git <tmp>/Skills-Sharing
   ```
   If `git` isn't installed, download and unzip `https://github.com/Yonickgt/Skills-Sharing/archive/refs/heads/main.zip` instead.
2. Copy every folder in `skills/` into `~/.agents/skills/`. Codex, Gemini CLI, Copilot and most other agents read skills from there.
3. **If you're Claude Code**, also copy them into `~/.claude/skills/`, and copy `skills/ten-second-rule/clueless-viewer.md` into `~/.claude/agents/`.
4. Before you overwrite a skill folder that already exists, tell the user and ask first.
5. Tell the user to fully close and reopen the app, then type `/handoff`, `/ten-second-rule` or `/skill-builder`. If the app has no slash commands, they can just say "handoff" and the skill will start.

On Windows, `~` means `%USERPROFILE%`. You can also run the repo's `install.ps1` (Windows) or `Install-Mac.command` (Mac or Linux), which do steps 2 and 3 for you.
