---
name: skill-template
description: An empty example skill that explains how a SKILL.md file is put together. Use when the user says "skill template", "/skill-template", "how does a skill work", "what is a SKILL.md", "show me the skill format", or wants a blank skill to copy.
---

# Skill Template

This skill does nothing except teach. It is a working skill with every part labelled, so you can open this file and see how any skill is built.

## Steps

1. Walk the user through the five parts below in plain language, one short paragraph each.
2. Show the blank copy at the bottom and offer to fill it in with them (or point them to `/skill-builder`).

## The five parts of a SKILL.md

**1. The folder.** A skill is a folder, and the folder name is the skill's name. This one is `skill-template`. Use lowercase letters, numbers and dashes only.

**2. The top block (between the `---` lines).** Two lines go here, and only two:

- `name:` the same as the folder name. It becomes the slash command, so `skill-template` means you type `/skill-template`.
- `description:` one or two sentences. Say what the skill does, then "Use when..." followed by the exact words you would type. **This is the most important line in the file.** Claude reads only this line to decide whether to start the skill, so vague words mean it never starts.

**3. The title and goal.** One heading, then one or two sentences on what a good result looks like.

**4. Steps.** A numbered list of what Claude does, in order. Write it for someone who has never met you: say what to open, what to check and what to produce.

**5. Rules and output.** The "always" and "never" list, and the exact shape of the result (a file name, the sections inside it, or the format of the reply).

## Blank copy

Copy everything between the lines into a new `SKILL.md`, replace the `<...>` parts, and save it in a folder named after the skill.

````markdown
---
name: <skill-name>
description: <What it does, in one sentence.> Use when the user says "<phrase 1>", "<phrase 2>", "/<skill-name>".
---

# <Title>

<One or two sentences: the goal and what a good result looks like.>

## Steps

1. <First thing to do.>
2. <Second thing to do.>

## Rules

- <Something it must always do.>
- <Something it must never do.>

## Output

<The exact shape of the result.>
````

## Rules

- Keep one skill to one job. Two jobs means two skills.
- Never put passwords or keys in a skill.
- Keep the file short. If it needs long reference material, put that in a second file in the same folder and say when to open it.
