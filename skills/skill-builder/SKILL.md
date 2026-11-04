---
name: skill-builder
description: Build a new Agent Skill (a folder with a SKILL.md) straight from the user's description, with no interview, explanation or approval step, and install it so it runs as /<name>. Works in the Claude desktop app and Claude Code. Use when the user says "skill builder", "/skill-builder", "make a skill", "create a skill", "build me a skill", "turn this into a skill", or wants to save a repeatable workflow as a slash command.
---

# Skill Builder

Turn the user's description into a finished, installed skill in one go. Don't interview, don't explain, don't ask for approval. Write the file, save it, and reply with the command to run.

## Steps

1. **Read the description as the full spec.** Whatever the user typed after `/skill-builder` (plus any files, HTML, screenshots or examples they attached) is everything you get. Work out the job, the trigger phrases, the steps, the rules and the output from it. Where something is missing, choose a sensible default and keep going. Never ask a question.
2. **Name it after what it does.** Every new skill gets its own real name, made from its job: an HTML deck turned into a PPTX design library becomes `pptx-design-library`, meeting notes become `meeting-notes`. Never use a placeholder like `new-skill`, `my-skill`, `newskillname` or `skill-1`. Lowercase letters, numbers and hyphens only, 64 characters at most. Use the name the user gave if they gave one. The name is the slash command, so the user will run it as `/pptx-design-library`.
3. **Write the description.** This is the most important line, because it's how the AI decides when to load the skill. Say what the skill does, then "Use when..." with the user's own words as trigger phrases, including `/<name>`. Keep it under 1024 characters.
4. **Write the body** with the template below. Turn the user's description into numbered steps that do the work, not a plan or an essay about the work. Write rules as plain commands. Keep it under 500 lines. If it needs long reference material (a catalogue, a list of patterns, a template), put that in a separate file in the same folder and point to it from the steps.
5. **Save it right away**, without showing it first. If the app shows a "Save skill" card, use it. Otherwise write the file to `~/.claude/skills/<name>/SKILL.md`, or to `.claude/skills/<name>/` inside the project if the user asked for it only in the current project. This only works in the desktop app and Claude Code. If you're on the Claude website, tell the user to switch, because the website can't save skills to their computer.
6. **Reply in at most two lines:** where the file was saved, and `Restart the app, then type /<name>.` with the real name filled in (for example `Restart the app, then type /pptx-design-library.`). Nothing else: no summary of the skill, no design notes, no "does this match what you want?".

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
- **Build, don't discuss.** No questions, no previews, no confirmation step. The user's description is the approval.
- **No secrets.** Never put passwords, tokens or API keys in a skill. Refer to them by name.
- **Don't overwrite.** If a skill with that name already exists, save the new one under a new name (`<name>-2`) and say so in the reply. Update the existing one only if the user asked to update it.
- **Keep the top block simple.** Only `name` and `description` go between the `---` lines. If one step needs a specific tool, say what to do when that tool isn't there.
