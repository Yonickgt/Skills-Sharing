# Skills-Sharing

Two Claude skills you can install in about a minute, no terminal needed. After installing, type `/` in Claude and pick one.

| Skill | What it does |
|-------|--------------|
| `/handoff` | Writes a `HANDOFF.md` so a fresh Claude session or teammate can continue your unfinished work with zero context. |
| `/ten-second-rule` | Gives every slide or page one main point, then has a clueless viewer take a 10-second look. The screen passes only if the viewer gets the same point. |

## Install (Claude desktop app)

1. On this page click the green **Code** button, then **Download ZIP**, and unzip it anywhere.
2. Double-click the installer:
   - **Windows:** `Install-Windows.bat`
   - **Mac:** `Install-Mac.command` (if macOS blocks it, right-click it, choose Open, then Open again)
3. Fully close Claude and reopen it.
4. Type `/` in a chat and choose `handoff` or `ten-second-rule`.

The installer only copies files into your `.claude` folder (`skills` and `agents`). It doesn't change anything else, and it's safe to run again to update.

## Uninstall

Delete the `handoff` and `ten-second-rule` folders from `.claude/skills`, and `clueless-viewer.md` from `.claude/agents`.

## For command-line users

```
/plugin marketplace add Yonickgt/Skills-Sharing
/plugin install skills-sharing@skills-sharing
```

The skills then appear as `/skills-sharing:handoff` and `/skills-sharing:ten-second-rule`.
