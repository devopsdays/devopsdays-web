---
name: add-speaker
description: Use when a devopsdays event has confirmed a speaker and their talk, workshop, ignite, or keynote needs to appear on the event site - covers the speaker bio page, the talk page, the headshot, and multi-speaker talks.
---

# Add a speaker and their talk

Every speaker needs **two** files that share one slug, plus usually a headshot:

| File | Purpose |
|---|---|
| `content/events/<YYYY>-<city>/speakers/<slug>.md` | The bio page |
| `content/events/<YYYY>-<city>/program/<slug>.md` | The talk page: title and abstract |
| `assets/events/<YYYY>-<city>/speakers/<slug>.<ext>` | The headshot |

Adding a speaker does **not** put them on the schedule. That is
`.claude/skills/build-program/SKILL.md`.

## The slug

Lowercase, ASCII, hyphen-separated: `jane-doe`, `maria-lopez`. Fold accents (`Ramírez` →
`ramirez`), drop apostrophes and periods (`O'Brien` → `obrien`, `J.R. Smith` → `jr-smith`).

**The `Lint Filenames` CI job hard-fails on any mixed-case filename**, so this is not cosmetic.

## 1. Speaker page

`content/events/<YYYY>-<city>/speakers/<slug>.md`. TOML frontmatter, `+++` delimiters:

```
+++
Title = "Jane Doe"
Twitter = ""
linkedin = ""
image = ""
type = "speaker"
linktitle = "jane-doe"

+++

Jane's bio goes here. Markdown works.
```

The mixed key casing is what the generator produces and what every existing file uses. Hugo is
case-insensitive about frontmatter keys, so match the template rather than tidying it.

Optional fields the theme renders: `Website`, `Facebook`, `Github`, `Pronouns`, `twitch`,
`mastodon`, `bluesky`. Give `mastodon` and `bluesky` full profile URLs; `Twitter` and `Github`
take bare usernames without the `@`.

`image` is a **bare filename**, not a path — it resolves against
`assets/events/<YYYY>-<city>/speakers/`. Leave it `""` if there is no photo; the theme falls back
to a default avatar.

**Watch the first line.** If the `+++` has a trailing space — which happens with CRLF line
endings on Windows — the site will not build. Use LF.

## 2. Talk page

`content/events/<YYYY>-<city>/program/<slug>.md`:

```
+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "The Real Title Of The Talk"
Type = "talk"
Speakers = ["jane-doe"]
+++

The abstract goes here. Markdown works.
```

- `Title` here is the **display title of the talk**, unlike the program YAML where `title` is a
  slug. Do not confuse the two.
- `Speakers` is always an array, even for one speaker, and holds **speaker slugs**, not names.
- The `Talk_*` fields are vestigial — the schedule comes from the program data. Leave them empty.
- Keep `Type = "talk"` even for a keynote, workshop, or ignite. Those values have no layout and
  fall through to a blank template. The *program entry* is where you mark it as an ignite or
  workshop.

## 3. Headshot

Copy into `assets/events/<YYYY>-<city>/speakers/<slug>.<ext>`, creating the directory if needed:

```bash
mkdir -p assets/events/2026-boston/speakers
cp ~/Downloads/jane.jpg assets/events/2026-boston/speakers/jane-doe.jpg
```

- `.jpg`, `.png` and `.webp` all work — the extension must match the actual format
- Square, ideally 600×600. Non-square images get cropped on the speakers index but not on the
  individual pages
- Lowercase filename and lowercase extension
- Then set it in the speaker file: `image = "jane-doe.jpg"`

Note `utilities/add_speakers.sh` hardcodes `.png` for both the check and the destination, so it
will happily save a JPEG under a `.png` name. Writing the files directly avoids that.

## 4. Two or more speakers on one talk

Create a speaker page for each. Create **one** talk page listing all of them:

```
Speakers = ["jane-doe", "sam-patel"]
```

You can name that talk file after either speaker, or rename it to something combined
(`doe-patel.md`) — as long as the program entry's `title` matches the filename.

## 5. Show the speakers page in the nav

The first time an event adds speakers, uncomment the entry in
`data/events/<YYYY>/<city>/main.yml`:

```yaml
nav_elements:
  - name: speakers
```

Do this by hand. The `sed` in `utilities/add_speakers.sh` that is supposed to do it no longer
matches the template and silently does nothing.

You also need `content/events/<YYYY>-<city>/speakers.md` to exist:

```
+++
Title = "Speakers"
Type = "speakers"
Description = "Speakers for devopsdays <City> <YYYY>"
+++
```

## 6. Verify

- Both files use the same slug
- `Speakers = [...]` holds slugs that match real files in `speakers/`
- `image` matches a file that is actually on disk, with the right extension
- Preview `/events/<YYYY>-<city>/speakers/` and the individual talk page

## 7. Submit

Follow `.claude/skills/submit-changes/SKILL.md`.

PR title: `[BOS-2026] Add Jane Doe and her talk`.
