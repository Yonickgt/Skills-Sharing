---
name: handoff
description: Write a HANDOFF.md that lets a fresh agent or teammate pick up the current work cold, with no access to this conversation. Use when the user says "handoff", "hand off", "write a handoff", "/handoff", "wrap up for the next session", "I'm out of context", "pass this to someone else", or is about to end or compact a long session with unfinished work.
---

# Handoff

Write `HANDOFF.md` so someone with **zero context** can continue the work in under 5 minutes of reading. The reader has the repo but not this conversation. Everything they need that is not in the code must be in the file.

## Steps

1. **Gather facts, don't recall them.** Before writing, check the real state:
   - `git status`, `git diff --stat`, `git log --oneline -10`, current branch (skip if not a git repo)
   - Re-run the test/build command if one exists and record the actual result
   - Re-read any files you are about to cite, so the paths and line numbers are correct
2. **Check for an existing `HANDOFF.md`** at the project root. If there is one, update it: replace stale sections and keep history that still matters. Don't write a second file.
3. **Write the file** at the project root (or where the user says) using the template below.
4. **Reply with** the path plus a one-line summary of the next step. Don't paste the whole file into chat.

## Template

````markdown
# Handoff: <short task name>

_Updated: <YYYY-MM-DD HH:MM> · Branch: <branch> · Last commit: <sha> <msg>_

## Goal
<1–3 sentences: what we are trying to achieve and why. The definition of done.>

## Status
<One line: e.g. "~70% done, core logic works, UI not wired up." Be honest.>

## Done
- <What is finished and verified. Cite files as `path:line`.>

## In progress
- <What is half-done. Which file. What state it's in (compiles? tests failing?).>

## Next steps
1. <The very next concrete action. Specific enough to start immediately.>
2. <...>

## Decisions & why
- <Choice made> — <reason>. <Alternative rejected and why.>

## Gotchas / dead ends
- <Things that were tried and failed, surprising behavior, traps. Saves the reader from repeating them.>

## Open questions
- <Anything that still needs the user or a stakeholder to decide.>

## How to verify
```sh
<exact commands to build/test/run, and what a passing result looks like>
```

## Key files
- `path/to/file` — <why it matters>
````

## Rules

- **Facts, not vibes.** Every "done" or "works" claim has to come from something you checked this session. If you didn't verify something, say so ("untested", "assumed").
- **Report failures honestly.** Failing tests, broken builds, and hacks go in the file with the error text. Don't hide them.
- **Use absolute dates.** "Tomorrow" means nothing to the next reader.
- **Be specific.** `src/auth.ts:42`, not "the auth file". Give the exact command, not "run the tests".
- **Next step #1 must be actionable right away.** If the reader has to think about where to start, rewrite it.
- **Cut empty sections.** If there are no open questions, delete that heading. Don't write "N/A".
- **No secrets.** Never write tokens, passwords, or `.env` values. Refer to them by name (`STRIPE_KEY in .env`).
- **Keep it short.** Aim for one screen and 150 lines at most. Link to other docs rather than copying them.
- Don't commit the file unless the user asks.
