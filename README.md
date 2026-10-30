# Skills-Sharing

Two Claude Code skills, packaged as one plugin (`skills-sharing`).

| Skill | What it does |
|-------|--------------|
| [handoff](skills/handoff/) | Writes a `HANDOFF.md` so a fresh agent or teammate can continue unfinished work with zero context. |
| [ten-second-rule](skills/ten-second-rule/) | Gives every slide or page one main point, then has a clueless Sonnet viewer (`agents/clueless-viewer.md`) take a 10-second look. The screen passes only if the viewer gets the same point. |

## Install on any device

Inside Claude Code:

```
/plugin marketplace add Yonickgt/Skills-Sharing
/plugin install skills-sharing@skills-sharing
```

Restart Claude Code. The skills show up as `/skills-sharing:handoff` and `/skills-sharing:ten-second-rule`.

## Get updates

```
/plugin marketplace update skills-sharing
```
