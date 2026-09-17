---
name: change-sponsor-logo
description: Use when a sponsor has rebranded or sent an updated logo and it must change on current and future events without altering how they appeared at past devopsdays events.
---

# Change a sponsor's logo

Sponsor logos and data are shared globally, so overwriting `assets/sponsors/<c>/<id>.png` would
retroactively change every event that sponsor has ever supported. **This project deliberately does
not rewrite history** — a 2018 event should still show the 2018 logo.

The fix is to keep the old logo under a date-stamped id, repoint past events at it, and give the
new logo the original id so current and future events pick it up with no action from their
organizers.

## When you do not need any of this

If **this event is the only one** that has ever listed the sponsor, just replace the image and
open a normal PR. Check first:

```bash
grep -rl "id: <sponsor-id>" data/events/ | sort
```

One result → simple replacement. More than one → continue.

## Run the script

This is the one utility script worth calling directly: it takes arguments, has no interactive
loop, and validates its inputs.

```bash
./utilities/change_sponsor_logo.sh <sponsor-id> /full/path/to/new-logo.png
```

Use the exact existing id as it appears in `data/sponsors/`, not the display name. The path to the
new image must be absolute.

It will:

1. Copy the current logo to `assets/sponsors/<c>/<id>-before-<YYYYMMDD>.png`
2. Copy it again to `static/img/sponsors/<id>-before-<YYYYMMDD>.png` (the legacy tree — this
   filename pattern is the one exemption to the CI block on that directory)
3. Copy the current `data/sponsors/<id>.yml` to `<id>-before-<YYYYMMDD>.yml`
4. Overwrite `assets/sponsors/<c>/<id>.png` with the new image
5. Rewrite past events' `id: <sponsor-id>` to `id: <sponsor-id>-before-<YYYYMMDD>`

## Check what it actually did — this part matters

The script's idea of "past" is a path prefix match on the current calendar year, so **it does not
exclude future years.** An event in a later year gets wrongly rewritten to the old logo.

```bash
git diff --stat
git diff -- data/events/ | grep '^[-+].*id:'
```

Then revert any event whose year is the current year or later:

```bash
git checkout -- data/events/2027/
```

Also check nothing was missed. The script enumerates through `git ls-tree HEAD`, so an event whose
data file is not yet committed is invisible to it:

```bash
git status --short data/events/
```

## Finish the sponsor data

Update `data/sponsors/<id>.yml` with anything else that changed — a new name after a rebrand, a
new URL. The `-before-` copy keeps the old values for the old events.

Confirm the new logo meets the requirements: at least 200px wide (600px preferred), white or
transparent background, and it really is a PNG.

## Verify

- A past event's sponsor page still shows the old logo
- A current or upcoming event shows the new one
- `data/sponsors/<id>-before-<date>.yml` exists and has the old values
- Nothing under `static/img/sponsors/` changed **except** the `-before-<date>` file, or CI blocks
  the PR
- Preview two events — one old, one current — side by side

## Submit

Follow `.claude/skills/submit-changes/SKILL.md`.

PR title: `[SITE] Update <Sponsor> logo`, since this is not scoped to one event.

Mention in the PR body which events were repointed to the `-before-` id, so a reviewer can sanity
check the year boundary.
