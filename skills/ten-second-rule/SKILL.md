---
name: ten-second-rule
description: Purpose-first design gate for slides, UI screens, and websites. Every screen gets one stated main point, and a single persistent clueless viewer (Sonnet, no codebase access) gets 10 seconds to say what it is. The screen passes only if the viewer's verdict matches the purpose. Use when the user says "10 second rule", "ten second rule", "/ten-second-rule", or asks to check that slides/pages get their point across.
---

# The 10 Second Rule

Every screen has to earn its place with **one main point**. If a stranger can't say that point after 10 seconds, the screen fails.

## Roles

- **You (orchestrator):** design each screen, write down its purpose, take a screenshot, and judge the verdict.
- **Viewer:** a separate AI that sees only screenshots and never the code, the purpose, or your notes. Its instructions are in `clueless-viewer.md`, next to this file.

## Hard rules

1. **Exactly one viewer for the whole run.** Start it once for screen 1. Send every later screen, including retests, to the **same** viewer. Never start a second one. The viewer keeps screens 1..n-1 in mind when it judges screen n, like a real audience.
2. **Never leak the purpose.** Don't include the purpose, the design reasoning, file paths to code, or hints like "this slide is about..." in any message to the viewer. The only thing you send is the screenshot path.
3. **Write the purpose before the viewer sees the screen.** Once a screen is tested, don't change its purpose to match what the viewer said.

## Loop (per screen, in order)

1. **Purpose.** Write down in one sentence: `Screen N purpose: <the one thing the viewer must take away>`. If you can't fit it in one sentence, the screen is doing too much, so split it.
2. **Design** the screen with everything serving that purpose. Cut anything that competes with it.
3. **Screenshot** it at its real viewport size to a PNG in the scratchpad (`screen-<N>-try<K>.png`). Use whatever tool is available: `playwright-cli` screenshot, chrome-devtools `take_screenshot`, pencil `export_nodes`, or render the slide HTML and capture it. If you can't take screenshots, ask the user for one.
4. **Show it to the viewer.** Use the first option that works for you:
   - **Claude Code:** for screen 1, run `Agent(subagent_type: "clueless-viewer", description: "10s viewer", prompt: "Screen 1. Screenshot: <abs path>")`. Use `"skills-sharing:clueless-viewer"` if it was installed as a plugin, or a general-purpose agent on Sonnet with `clueless-viewer.md` as its prompt if neither exists. For every later screen, run `SendMessage(to: <viewer>, message: "Screen N. Screenshot: <abs path>")`, loading it with `ToolSearch("select:SendMessage")` if it's deferred.
   - **Another tool that has subagents:** start one subagent whose instructions are the body of `clueless-viewer.md`, send it only `"Screen N. Screenshot: <path>"`, and keep using that same subagent.
5. **Judge.** Compare the viewer's `MAIN POINT` to the purpose.
   - **PASS:** it's the same claim, even in different words.
   - **FAIL:** it's a different point, only a side detail, too vague ("it's about the product"), or `CONFUSED BY` names something that competes with the main point.
6. **On FAIL:** use `FIRST LOOK` and `CONFUSED BY` to find the cause (hierarchy, copy, clutter), redesign, take a new screenshot as `try<K+1>`, and send it to the same viewer as `"Screen N (revised). Screenshot: <path>"`. Stop after **3 failed tries** on one screen and ask the user whether to split the screen or change its purpose.
7. **On PASS:** move to screen N+1.

## Report

After the last screen, print one table:

| Screen | Purpose | Viewer's main point | Tries | Result |
|---|---|---|---|---|
