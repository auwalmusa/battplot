# Battlytics Visual Style Guide (battplot)

This guide defines how Battlytics charts should look and read.
The goal is technical but readable, with one clear claim per chart.

## 1) Brand colours

Primary:
- Navy: #001F35
- Deep navy: #001528

Accents:
- Cyan: #16ABE9
- Blue: #0175AA

Neutrals:
- Ice: #D9F2F7
- White: #FFFFFF

Rules:
- Use deep navy for titles, axis labels, and body text.
- Use cyan for the main series.
- Use blue for the secondary series.
- Do not use more than 4 colours on one chart.
- Avoid red unless you are highlighting risk or failure.

## 2) Typography

Defaults:
- Font family: sans
- Base size: 12

Rules:
- Title is a claim, not a label.
- Subtitle adds context in one line.
- Caption always includes a source.
- Avoid all caps.

## 3) Standard chart layout

Every chart should have:
- Title: the claim
- Subtitle: the context
- Caption: source and notes

Use these helpers:
- theme_battlytics()
- batt_labs()
- batt_caption()
- scale_color_battlytics() / scale_fill_battlytics()

Recommended caption format:
- `Source: ... | Notes: ...`

## 4) Annotation rules

Do:
- Annotate only the key insight.
- Label peaks, troughs, or breakpoints.
- Keep annotations short and factual.

Don’t:
- Add multiple callouts.
- Use long paragraphs inside the plot.
- Hide uncertainty when it matters.

## 5) Axes, units, and integrity

- Always show units.
- Start bar charts at zero.
- Avoid dual axes.
- If you smooth or model, state it in Notes.
- If data is incomplete, state coverage (time window, sample size).

## 6) Gridlines and clutter

- Minor gridlines off.
- Vertical major gridlines off.
- Horizontal major gridlines faint.

If the plot looks busy, reduce categories or simplify the message.

## 7) LinkedIn export standards

Landscape (recommended):
- Function: batt_save_linkedin()
- Size: 12 x 6.75 inches
- DPI: 300

Square:
- Function: batt_save_square()
- Size: 8 x 8 inches
- DPI: 300

File naming:
- `YYYY-MM_topic_slug.png`
- Example: `2026-01_grid_connections_readiness.png`

## 8) Battlytics monthly brief standard

Each monthly post ships with:
1) One hero chart (made with battplot)
2) Three bullet insights (numbers first)
3) One dashboard angle (what to monitor weekly)
4) One action for decision makers
5) A short methods block (assumptions and caveats)

## 9) Quality checklist (before posting)

- Does the title make a clear claim?
- Is the chart readable on a phone?
- Are units and time windows clear?
- Does the caption include a source?
- Is the colour use consistent with Battlytics rules?
- Would a non-specialist understand the takeaway in 10 seconds?
