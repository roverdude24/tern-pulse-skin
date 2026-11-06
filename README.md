# PULSE skin for Tern

Pick `dark-pulse-amber`, `dark-pulse-lcars` or `dark-pulse-neon` in Tern's theme picker. The whole window then takes the PULSE app design: fonts, square or pill shapes, folder or underline tabs, labelled panel headers, scanlines, corner crosses or brackets, and the LCARS band and end caps. Any other theme turns the skin off within 1.5 s.

The skin restyles Tern's shared tokens and surface kit, not any one plugin. Every plugin that draws with Tern's canvas and blocks (Roost, Overseer, Agent Scheduler, …) follows it.

## Install

1. Themes: copy the three `dark-pulse-*.json` files into `~/.omp/agent/themes/`.
2. Fonts: copy `fonts/*` into `~/Library/Fonts/`, then restart Tern once (`tern restart`) so it sees them.
3. Plugin: `tern plugin link ~/Developer/tern-pulse-skin`.

## Source

Tokens come from the approved PULSE design, `B_APP/design/od-r4/r4c/themes/tokens.json` (r2b, locked), prefixed `--pk-`. Edit `skins.luau`. It reloads on save.

Tern's renderer has no `text-shadow`, so the design's text bloom is left out.

Fonts: IBM Plex (OFL), JetBrains Mono (OFL), Departure Mono (OFL).
