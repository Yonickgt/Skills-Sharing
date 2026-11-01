# Skills-Sharing

> **AI assistants:** if a user gave you this link and asked you to install the skills, follow [INSTALL.md](INSTALL.md).

A beginner's guide to AI skills, plus three ready-made ones. They work in Claude, ChatGPT, Gemini, Copilot, Codex, Cursor, and any other tool that follows the open [Agent Skills](https://agentskills.io) standard.

| Skill | What it does |
|-------|--------------|
| `/handoff` | Writes a `HANDOFF.md` so a fresh chat or a teammate can continue your unfinished work with zero context. |
| `/ten-second-rule` | Gives every slide or page one main point, then has a clueless viewer take a 10-second look. The screen passes only if the viewer gets the same point. |
| `/skill-builder` | Asks you a few questions and builds your own skill, then installs it. |

## Install

### The easy way: ask your AI

Paste this into your AI app:

> Install the skills from https://github.com/Yonickgt/Skills-Sharing

Then fully close and reopen the app, and type `/` to find the skills. This works best in apps that can run commands (Claude Code or the Claude desktop app, Codex, Gemini CLI, Copilot in VS Code, Cursor). In a plain chat app, the AI will walk you through uploading the skill yourself.

### Double-click installer

1. On this page click the green **Code** button, then **Download ZIP**, and unzip it anywhere.
2. Double-click `Install-Windows.bat` (Windows) or `Install-Mac.command` (Mac; if macOS blocks it, right-click it, choose **Open**, then **Open** again).
3. Fully close your AI app and reopen it.

The installer only copies the skill folders into `.claude/skills` (Claude) and `.agents/skills` (Codex, Gemini CLI, Copilot and others) in your home folder. It's safe to run again to update.

### Chat apps (ChatGPT, Claude.ai, Gemini app, Microsoft Copilot)

Zip one skill folder from `skills/` and upload it in the app's Skills settings. The Gemini app and Microsoft Copilot don't take uploads, so paste the `SKILL.md` text into a Gem or into custom instructions instead. [INSTALL.md](INSTALL.md#b-youre-a-chat-app-with-no-file-access) has the steps for each app.

### Claude Code plugin

```
/plugin marketplace add Yonickgt/Skills-Sharing
/plugin install skills-sharing@skills-sharing
```

Installed this way, the skills appear as `/skills-sharing:handoff` and so on.

## Where each AI looks for skills

| App | Your skills (all projects) | One project only |
|-----|----------------------------|------------------|
| Claude Code | `~/.claude/skills/` | `.claude/skills/` |
| Codex | `~/.agents/skills/` | `.agents/skills/` |
| Gemini CLI | `~/.gemini/skills/` or `~/.agents/skills/` | `.gemini/skills/` or `.agents/skills/` |
| GitHub Copilot (CLI, VS Code, cloud agent) | `~/.copilot/skills/` or `~/.agents/skills/` | `.github/skills/` or `.agents/skills/` |
| ChatGPT, Claude.ai | Upload a zip in the app's Skills settings | — |

`~/.agents/skills/` is the shared spot, so one copy there covers most tools.

## What is a skill?

A skill is a folder with one file in it, `SKILL.md`. The file starts with a short header (the frontmatter), followed by plain instructions:

```markdown
---
name: meeting-notes
description: Turn a meeting transcript into notes with decisions and action items. Use when the user says "meeting notes", "/meeting-notes", or pastes a transcript.
---

# Meeting Notes

1. Read the whole transcript.
2. List every decision, with who made it.
3. List action items as "- [ ] owner: task (due date)".

Never invent a due date. If none was said, write "no date".
```

Here's how it works:

- When a chat starts, the AI reads only the `name` and `description` of each installed skill. That's cheap, so you can install lots of them.
- When your message matches a description, or you type `/meeting-notes`, the AI loads the rest of the file and follows it.
- A skill folder can also hold extra files, like templates, reference lists or scripts. The steps in `SKILL.md` say when to open them. (`ten-second-rule` does this with `clueless-viewer.md`.)

## Make your own

The easiest way is to install the skills, type `/skill-builder`, and answer its questions.

To write one by hand:

1. Make a folder named after the skill, using lowercase letters and hyphens (`meeting-notes`).
2. Put a `SKILL.md` inside it, with `name` (the same as the folder) and `description` in the header.
3. Write the description as what the skill does plus "Use when..." with the exact words you'll type. The AI uses this line to decide when to load the skill, so it matters most.
4. Write the body as numbered steps and short rules, not an essay. Say what the finished result looks like.
5. Copy the folder to one of the locations in the table above, restart the app, and try it.

Tips:

- **One skill, one job.** Two jobs means two skills.
- **Write for a stranger.** The AI has never met you, so spell out formats, file names and what "done" means.
- **Say what to do when things fail**, for example "if the tests fail, include the error text".
- **No secrets.** Never put passwords or API keys in a skill.

For worked examples, read [`skills/handoff/SKILL.md`](skills/handoff/SKILL.md) (simple) and [`skills/ten-second-rule/SKILL.md`](skills/ten-second-rule/SKILL.md) (uses a helper file and a second AI).

## Uninstall

Delete the `handoff`, `ten-second-rule` and `skill-builder` folders from `~/.claude/skills` and `~/.agents/skills`, and delete `clueless-viewer.md` from `~/.claude/agents`.
