---
name: skill-builder
description: Interview the user and build a new Claude skill (a folder with a SKILL.md) for the Claude desktop app and Claude Code, then save it. Use when the user says "skill builder", "/skill-builder", "make a skill", "create a skill", "build me a skill", "turn this into a skill", or wants to save a repeatable workflow as a slash command.
---

# Skill Builder

Turn something the user does over and over into a skill: a folder holding one `SKILL.md` that Claude can load. Keep the user in plain language the whole time. They may never have seen a SKILL.md before.

## Steps

1. **Interview.** Ask these one or two at a time, and skip any the conversation already answers:
   - What should the skill do? Ask for one real example of a time they'd use it.
   - What would they type or say to start it? (These become the trigger phrases.)
   - What does a finished result look like? (A file, a reply in a set format, a checklist, changes to code...)
   - What are the steps, in order?
   - What must it always or never do?
   - Does it need anything besides instructions, like a template, a reference list, or a script?
2. **Name it.** Lowercase letters, numbers and hyphens only, 64 characters at most, short and clear (`meeting-notes`, `bug-report`). The name becomes the slash command, `/meeting-notes`. Confirm it with the user.
3. **Write the description.** This is the most important line, because it's how the AI decides when to load the skill. Say what the skill does, then "Use when..." with the user's own trigger phrases, including `/<name>`. Keep it under 1024 characters.
4. **Write the body** with the template below. Use numbered steps, not essays. Write rules as plain commands. Keep it under 500 lines. If it needs long reference material, put that in a separate file in the same folder and point to it from the steps.
5. **Show the user the full SKILL.md** and ask if anything is wrong or missing. Fix it before saving.
6. **Save it.** If the app shows a "Save skill" card, use it and let the user click Save. Otherwise write the file to `~/.claude/skills/<name>/SKILL.md`. If the user wants it only for the current project, use `.claude/skills/<name>/` inside the project instead. This only works in the desktop app and Claude Code. If you're on the Claude website, tell the user to switch, because the website can't save skills to their computer.
7. **Test it.** Tell the user to restart the app, then type `/<name>` (or one of the trigger phrases) and check that the skill starts. If it doesn't start from a trigger phrase, the description is too vague, so add the exact words they used.

## Template

````markdown
---
name: <name>
description: <What it does, in one sentence.> Use when the user says "<phrase 1>", "<phrase 2>", "/<name>", or <the situation it's for>.
---

# <Title>

<One or two sentences: the goal and what a good result looks like.>

## Steps

1. <First concrete action.>
2. <...>

## Rules

- <Something it must always do.>
- <Something it must never do.>

## Output

<The exact format of the result: a file name and its sections, or the shape of the reply.>
````

## Rules

- **One skill, one job.** If the user describes two jobs, make two skills.
- **Write for an AI that has never met the user.** Spell out the steps, formats and names. Don't write "do the usual".
- **Use the user's words** in the description, since those are the words they'll actually type.
- **No secrets.** Never put passwords, tokens or API keys in a skill. Refer to them by name.
- **Don't overwrite.** If a skill with that name already exists, show it to the user and ask whether to update it or pick a new name.
- **Keep the top block simple.** Only `name` and `description` go between the `---` lines. If one step needs a specific tool, say what to do when that tool isn't there.
