# Install instructions (for AI assistants)

A user gave you this repository's link and asked you to install its skills. Follow the first section that fits you. Each skill is a folder in `skills/` with a `SKILL.md` inside. Install all of them unless the user named specific ones.

Repo: `https://github.com/Yonickgt/Skills-Sharing`

## A. You can run shell commands

Covers Claude Code (including the Claude desktop app's Code tab), OpenAI Codex, Gemini CLI, GitHub Copilot CLI or VS Code agent mode, Cursor, and other agents.

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

## B. You're a chat app with no file access

Covers ChatGPT, Claude.ai, the Gemini app and Microsoft Copilot. You can't install anything yourself, so walk the user through it:

1. On the GitHub page, click **Code**, then **Download ZIP**, and unzip it.
2. Inside `skills/`, zip the folder of the skill they want (for example the `handoff` folder, with `SKILL.md` inside it).
3. Upload it:
   - **ChatGPT:** open **Skills** (under your profile or Plugins menu), choose **Upload**, and pick the zip. On a work account, an admin may need to switch Skills on first.
   - **Claude.ai or the Claude desktop chat:** open **Settings**, find **Skills**, choose **Upload skill**, and pick the zip.
   - **Gemini app:** it doesn't take skill uploads. Create a **Gem** and paste the contents of `SKILL.md` into its instructions.
   - **Microsoft Copilot:** it doesn't take skill uploads either. Paste the contents of `SKILL.md` into custom instructions, or at the start of a chat.
4. Start a new chat and say the skill's name ("handoff") to use it.
