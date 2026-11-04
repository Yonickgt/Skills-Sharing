# Install instructions (for AI assistants)

A user gave you this repository's link and asked you to install its skills. These skills are for the Claude desktop app and Claude Code only. They can't be installed from the Claude website (claude.ai in a browser), because the website can't write files to the user's computer. If that's where you are, tell the user to open the desktop app or Claude Code instead.

Repo: `https://github.com/Yonickgt/Skills-Sharing`

Each skill is a folder in `skills/` with a `SKILL.md` inside. Install all of them unless the user named specific ones.

## Steps

1. Download the repo to a temporary folder:
   ```sh
   git clone --depth 1 https://github.com/Yonickgt/Skills-Sharing.git <tmp>/Skills-Sharing
   ```
   If `git` isn't installed, download and unzip `https://github.com/Yonickgt/Skills-Sharing/archive/refs/heads/main.zip` instead.
2. Copy every folder in `skills/` into `~/.claude/skills/`.
3. Before you overwrite a skill folder that already exists, tell the user and ask first.
4. Tell the user to fully close and reopen the app, then type `/handoff`, `/skill-builder` or `/skill-template`.

On Windows, `~` means `%USERPROFILE%`. You can also run the repo's `install.ps1` (Windows) or `Install-Mac.command` (Mac), which do step 2 for you.
