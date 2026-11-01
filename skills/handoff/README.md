# Handoff

A skill that writes a `HANDOFF.md` so a fresh agent or teammate can pick up your unfinished work **with zero context**. They'll have the repo, but not the conversation.

## What it enforces

1. **Facts, not memory.** Before writing, it checks the real state: `git status`, the diff, recent commits, and a fresh test/build run.
2. **One file.** If a `HANDOFF.md` already exists, it updates that file instead of creating a second one.
3. **A fixed structure.** Every handoff has the same sections: goal, status, done, in progress, next steps, decisions and why, gotchas and dead ends, open questions, how to verify, and key files.
4. **Honest status.** Anything it didn't verify is marked untested, and failing tests or builds go in with the error text.
5. **Specific references.** It cites exact places like `src/auth.ts:42` and gives exact commands, with absolute dates.
6. **No secrets.** It refers to tokens and `.env` values by name only, never by value.
7. **Short.** It aims for one screen, 150 lines at most, and deletes empty sections.

## Install

See the [repo README](../../README.md#install).

## Usage

```
/handoff
```

Or just say *"write a handoff"*, *"wrap up for the next session"*, or *"I'm out of context"*.

**What you get:** a `HANDOFF.md` at the project root (or wherever you ask), plus a one-line chat reply with the file path and the next step. It doesn't commit the file unless you ask.

**To continue:** in a new session, tell your AI *"read HANDOFF.md and continue"*.
