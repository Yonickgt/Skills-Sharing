# The 10 Second Rule

A skill for building slides, UI screens, and websites where **every screen has one main point**, and a stranger gets it in 10 seconds.

The AI designs each screen and writes down its purpose first. Then a separate "clueless viewer" (a second AI that knows nothing about the project) gets one look at a screenshot and says what it thinks the point is. The screen passes only if the viewer's answer matches the purpose.

## What it enforces

1. **Purpose first.** Every screen gets a one-sentence purpose before it's designed. If the purpose needs two sentences, the screen should be split.
2. **A truly clueless viewer.** The viewer only ever gets a screenshot path. It never sees the code, the purpose, or the design notes, and its only tool is Read.
3. **The 10-second test.** One look, no zooming, no studying the fine print. The viewer replies with the main point, what it noticed first, and anything that confused it.
4. **Match or redesign.** If the viewer's main point differs from the purpose, is too vague, or lands on a side detail, Claude redesigns and shows the new version to the same viewer. After 3 failed tries it stops and asks you whether to split the screen or change its purpose.
5. **One viewer for the whole deck.** The viewer is started once and keeps every earlier screen in memory, so screen 3 is judged by someone who has already seen screens 1 and 2, like a real audience.
6. **No moving the goalposts.** A screen's purpose can't be rewritten after the test to match what the viewer said.

## Files

- `skills/ten-second-rule/SKILL.md` is the skill.
- `skills/ten-second-rule/clueless-viewer.md` holds the viewer's instructions. In Claude Code it's installed as a Sonnet subagent with Read as its only tool. Other tools start their own subagent from it.

## Install

See the [repo README](../../README.md#install).

## Usage

```
/ten-second-rule build a 6-slide pitch deck for my coffee subscription app
```

Or just ask: *"use the 10 second rule on my landing page"*.

**What happens, screen by screen:**

1. Claude writes the screen's purpose, for example: *"Screen 2 purpose: our subscription is cheaper than buying coffee daily."*
2. Claude designs the screen and saves a screenshot.
3. The viewer looks once and replies:
   ```
   SCREEN: 2
   MAIN POINT: The subscription saves money compared to buying coffee every day.
   FIRST LOOK: The big "$38/month saved" number.
   CONFUSED BY: nothing
   ```
4. The viewer's main point matches the purpose, so screen 2 passes and Claude moves to screen 3.

**What you get at the end:** a table with each screen's purpose, the viewer's main point, the number of tries, and whether it passed.

## Requirements

- **A way to take screenshots.** The skill uses whichever tool is available, such as the Playwright CLI, Chrome DevTools MCP, or Pencil. Without one, you provide the screenshots.
- **A subagent for the viewer.** Claude Code and most command-line AI tools support them.

## Limits

- **The 10 seconds isn't a real timer.** It's acted out: one look at a screenshot and a short answer.
- **The viewer's Read tool could technically open any file.** It stays out of the codebase because its instructions say to open only the screenshot it's given, and it's only ever given screenshot paths.
