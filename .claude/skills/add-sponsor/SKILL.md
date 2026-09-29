---
name: add-sponsor
description: Use when a devopsdays event has sold or confirmed a sponsorship and the sponsor needs to appear on the event's site - covers both sponsors already in the shared directory and brand-new ones needing a logo and data file.
---

# Add a sponsor to an event

Sponsors are **global**, not per-event. `data/sponsors/<id>.yml` and
`assets/sponsors/<first-char>/<id>.png` are shared by every event that has ever listed that
sponsor. An event references a sponsor by id and level.

This matters: creating a duplicate sponsor entry when one already exists is the most common
mistake here, and it fragments the shared directory.

## Gather

- Event: year and city (→ `<YYYY>` and `<city-slug>`, e.g. `2026` / `boston`)
- Sponsor name as it should read
- Sponsorship level
- Sponsor URL, and whether this event needs its own tracking URL
- A logo, **only if** the sponsor is not already in the directory

## 1. Check whether the sponsor already exists — always do this first

```bash
ls data/sponsors/ | grep -i <name-fragment>
```

Search loosely. `thoughtworks-gocd`, `ibmcode`, and `redhat` are all real ids that a plain name
search would miss. Also look for date-suffixed variants like `pivotal-before-20190115.yml` —
those are *historical* entries kept so past events keep their old logo. **Never point a current
event at a `-before-` entry.**

If it exists with the right name and URL, go to step 3 — you do not need a logo, a data file, or
any change under `assets/`.

## 2. Only if it is genuinely new

Pick the id: lowercase, alphanumeric and hyphens, no spaces. It becomes the filename in both
places and must match exactly.

**Data file** — `data/sponsors/<id>.yml`:

```yaml
name: "Sponsor Display Name"
url: "https://sponsor.example.com"
```

`twitter:` is optional; add it without the `@` if you have it. That is the whole schema.

**Logo** — `assets/sponsors/<first-char>/<id>.png`, where `<first-char>` is the first character
of the id (`assets/sponsors/d/datadog.png`). Create the shard directory if it does not exist.

Requirements:

- At least 200px wide; 600px looks right on high-density displays
- White or transparent background
- Square is not required but usually looks better
- Lowercase filename, or the `Lint Filenames` CI job fails the PR

**Do not put anything in `static/img/sponsors/`.** A dedicated workflow
(`.github/workflows/no-sponsors-changes.yml`) hard-fails any PR that touches it.

## 3. Add the sponsor to the event

Edit `data/events/<YYYY>/<city-slug>/main.yml`.

Check `sponsor_levels:` first — the level you are adding must have a matching `id:` there, and if
that level has a `max:`, adding beyond it means the "Become a sponsor" link disappears for that
level. If the level does not exist yet, add it to `sponsor_levels:` too.

Then add to `sponsors:`:

```yaml
sponsors:
  - id: cloudbees
    level: bronze
```

If this event needs its own tracking URL, override it here rather than editing the shared sponsor
file — which would change the URL for every event that lists them:

```yaml
  - id: netapp
    level: gold
    url: https://netapp.com/?campaign=devopsdays-boston
```

Set `sponsors_accepted: "yes"` if the event wants the "Become a sponsor" links shown at all.

## 4. Verify

- The `id:` in `main.yml` matches `data/sponsors/<id>.yml` exactly. A mismatch renders an empty
  logo slot silently — nothing fails.
- The logo exists at `assets/sponsors/<first-char>/<id>.png`. A missing one produces a Hugo
  warning and falls back to the legacy static path.
- The `level:` matches an `id:` under `sponsor_levels:`.
- Preview `/events/<YYYY>-<city-slug>/sponsor/` and confirm the logo renders at the right level.

## 5. Submit

Follow `.claude/skills/submit-changes/SKILL.md`.

PR title: `[BOS-2026] Add CloudBees as a Bronze sponsor`.

## If a sponsor wants their logo changed

That is a different job with history-preservation rules — use
`.claude/skills/change-sponsor-logo/SKILL.md`. Do not simply overwrite the PNG; it would
retroactively rewrite years of past events.
