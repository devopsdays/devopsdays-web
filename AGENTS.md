# AGENTS.md — devopsdays-web

Instructions for AI coding agents working in this repository. Humans should start with
[README.md](README.md) and [CONTRIBUTING.md](CONTRIBUTING.md).

## What this repo is

[devopsdays.org](https://www.devopsdays.org) — a [Hugo](https://gohugo.io) static site covering
60–80 devopsdays events a year across 6 continents, plus 15+ years of archived events.

**Most changes here are event content, not code.** A local organizer adding a sponsor, a speaker,
or a program slot is the overwhelmingly common case, and most of those people are not developers.
Optimize for getting their change right and green on the first try.

Hugo **0.152.2 extended** is the pinned version. The canonical place it is set is
`.github/workflows/hugo.yml`; `netlify.toml`, `hugoserver.sh`, and `metadata.json` each repeat it
and have to be kept in sync by hand.

## Where things live

| Path | Contains |
|---|---|
| `data/events/<YYYY>/<city-slug>/main.yml` | The event's configuration: dates, location, nav, organizers, sponsors, program |
| `content/events/<YYYY>-<city-slug>/` | The event's pages, including `speakers/<slug>.md` and `program/<slug>.md` |
| `assets/events/<YYYY>-<city-slug>/` | `logo.png`, optional `logo-square.png`, `speakers/`, `organizers/` |
| `static/events/<YYYY>-<city-slug>/sharing/` | Social sharing cards — and nothing else image-related |
| `data/sponsors/<sponsor-id>.yml` | The global sponsor directory (flat, ~4,100 files) |
| `assets/sponsors/<first-char>/<sponsor-id>.png` | Sponsor logos, sharded by first character of the id |
| `themes/devopsdays-theme/` | Every template. There is no `layouts/` directory at the repo root |
| `config/_default/hugo.yml` | Site config. There is **no** `config.toml` |
| `static/_redirects` | Netlify redirects, including the `/<city>/*` vanity URL per city |
| `utilities/` | Organizer helper scripts and their templates |

Note the two different naming conventions, which is the single most common source of mistakes:

- Data uses nested directories: `data/events/2026/boston/main.yml`
- Everything else uses a flat slug: `content/events/2026-boston/`, `assets/events/2026-boston/`

An event may optionally split `program.yml`, `sponsors.yml`, or `organizers.yml` into sibling
files next to `main.yml`. They are merged by `themes/devopsdays-theme/layouts/partials/functions/get-event-data.html`,
and **`main.yml` wins on any key collision**. Very few events do this; put things in `main.yml`
unless the event already has a split file.

`assets/` is processed by Hugo Pipes (resizing, webp conversion, fingerprinting). `static/` is
copied verbatim. The theme looks in `assets/` first and falls back to `static/`, which is why
many old events still have images under `static/`. **New images go in `assets/`.**

## Rules that will break your pull request

Each of these is enforced by something. The enforcer is named so you can verify.

1. **Every new file and directory name must be lowercase.** Enforced by the `lint` job
   (`julie-ng/lowercase-linter`) in `.github/workflows/hugo.yml`, which hard-fails and blocks the
   build job. It flags *mixed* case, so `README.md` is fine but `Jane-Doe.md` and `photo.JPG` are
   not. Slugs are lowercase ASCII with hyphens; fold accents (`ā` → `a`) and drop anything else.

2. **Never add or modify anything under `static/img/sponsors/`.** Enforced by
   `.github/workflows/no-sponsors-changes.yml`, which hard-fails. That tree is legacy. Sponsor
   logos belong in `assets/sponsors/<first-char>/`. The only exemption is a filename matching
   `-before-<number>`, which `utilities/change_sponsor_logo.sh` creates.

3. **The pull request body must be non-empty and must not contain the string `Bluth`.** Enforced
   by `.github/workflows/pr.yml`, which hard-fails. `Bluth` is the placeholder in the PR template;
   the check is a plain substring match, so you cannot write about a real Bluth Company either.

4. **Pull request titles are `[CITY-YYYY] Short description`** — for example
   `[DEN-2026] Add CloudBees as a Bronze sponsor`. Either an abbreviation or the city name works.

5. **`name:` in `main.yml` is the one field that hard-fails the Hugo build.** It is the only
   `errorf` guard in the theme (`layouts/speaker/single.html`), and it fires through speaker pages.
   Its value is the flat slug: `name: "2026-boston"`.

6. **If `startdate` is set, `enddate` must be set too.** Several templates call `time $e.enddate`
   inside an `if $e.startdate` block with no guard, so a blank `enddate` breaks the build. This is
   not documented in `reference.md` as a dependency, but it is real.

7. **For `program:` entries of `type: talk`, and for every `ignites:` entry, `title` is a filename
   slug, not display text.** It must match a file in `content/events/<YYYY>-<city>/program/`
   without the `.md`. A typo produces a broken program entry silently — nothing fails.

8. **PDFs and files over 3 MB belong in [devopsdays-assets](https://github.com/devopsdays/devopsdays-assets)**,
   served from `https://assets.devopsdays.org`. `.github/workflows/large-files.yml` comments but
   does not block, so this one is on you.

9. **Adding or removing an organizer requires an email to `info@devopsdays.org`** with full names,
   email addresses, and employers. The merge is held until that is sent, because the same action
   updates the mailing list and Slack.

10. **Keep event content changes separate from theme changes.** Different PRs, per
    `CONTRIBUTING.md`. `.github/CODEOWNERS` will route them to different reviewers anyway.

11. **Never retroactively change a past event's sponsor logo.** History is preserved deliberately.
    Use the `change-sponsor-logo` skill.

12. **Do not run `git add -A`.** `resources/`, `public/`, `node_modules/`, and `.hugo_build.lock`
    are all sitting in the working tree. Stage files by name.

## Previewing locally

In order of preference:

```bash
./hugoserver.sh          # Docker, pinned to the right Hugo version. Recommended.
make docker-server       # docker compose; reads versions from .github/workflows/hugo.yml
hugo server -w --baseURL="http://localhost:1313"   # needs local Hugo 0.152.2 extended
```

Then open <http://localhost:1313>. Hugo's watcher misses structural changes — if you add or rename
files, or change dates, restart it.

On macOS, `hugo server` may fail with "too many open files"; `CONTRIBUTING.md` has the `ulimit`
and `sysctl` fix.

A full build of this site is not fast, and the repo is large (~11 GB with history). Do not assume
a build is hung after 30 seconds.

## Submitting changes

Two situations, and you must work out which one applies before doing anything:

- **Most contributors** work from a fork, with `origin` pointing at their fork and `upstream` at
  `devopsdays/devopsdays-web`.
- **Maintainers** have push access and `origin` is `devopsdays/devopsdays-web` itself.

Check with `git remote -v` and `gh repo view devopsdays/devopsdays-web --json viewerPermission`.

Always rebase on the latest upstream `main` before starting and before pushing. Never commit
directly to `main`.

Be aware that in this project **a maintainer merges a PR as soon as the checks pass**. If the
change is not ready, do not open the PR — use the team-preview workflow in
[utilities/docs/workflow/README.md](utilities/docs/workflow/README.md) instead.

Full mechanics, including how to interpret a failing check, are in the `submit-changes` skill
below.

## Skills

Task-specific instructions live in `.claude/skills/<name>/SKILL.md`. They are plain Markdown with
YAML frontmatter and contain nothing tool-specific.

**If your tool did not load these automatically, open the file listed below and follow it before
starting the task.** Claude Code discovers `.claude/skills/` on its own; other agents need to be
pointed at the path.

| Task | Skill |
|---|---|
| Set up a new event for a city and year | [`.claude/skills/new-event/SKILL.md`](.claude/skills/new-event/SKILL.md) |
| Add a sponsor to an event | [`.claude/skills/add-sponsor/SKILL.md`](.claude/skills/add-sponsor/SKILL.md) |
| Add a speaker and their talk | [`.claude/skills/add-speaker/SKILL.md`](.claude/skills/add-speaker/SKILL.md) |
| Build or edit the program / schedule | [`.claude/skills/build-program/SKILL.md`](.claude/skills/build-program/SKILL.md) |
| Add or update a local organizer | [`.claude/skills/add-organizer/SKILL.md`](.claude/skills/add-organizer/SKILL.md) |
| Add slides or video after the event | [`.claude/skills/add-talk-media/SKILL.md`](.claude/skills/add-talk-media/SKILL.md) |
| Cancel an event | [`.claude/skills/cancel-event/SKILL.md`](.claude/skills/cancel-event/SKILL.md) |
| Replace a sponsor's logo across the site | [`.claude/skills/change-sponsor-logo/SKILL.md`](.claude/skills/change-sponsor-logo/SKILL.md) |
| Commit, push, and open the pull request | [`.claude/skills/submit-changes/SKILL.md`](.claude/skills/submit-changes/SKILL.md) |

`submit-changes` is the last step of every other skill. Do not improvise the git and PR flow.

### A note on `utilities/*.sh`

The helper scripts in `utilities/` exist for humans and are documented in
[utilities/README.md](utilities/README.md). **The skills do not call most of them**, because
several loop until interrupted with CTRL+C and several have known bugs. Write the files directly,
using `utilities/examples/` as the source of truth for templates. The one exception is
`change_sponsor_logo.sh`, which takes arguments and is safe to call.

## Working on the theme or site code

Read [themes/devopsdays-theme/CONTRIBUTING.md](themes/devopsdays-theme/CONTRIBUTING.md) first, and
[themes/devopsdays-theme/reference.md](themes/devopsdays-theme/reference.md) for every data and
frontmatter field.

- Bootstrap 4.3 is the framework. Assets build through Hugo Pipes.
- All SCSS lives in `themes/devopsdays-theme/assets/scss/`. **`custom.scss` is the only place to
  write custom CSS**, and `custom-variables.scss` the only place to override Bootstrap variables.
- After changing npm dependencies: `npm install && make deps && make server`.
- Work should be driven by a GitHub issue. Prefix the title `[BUG]` or `[ENHANCEMENT]` if you
  cannot apply labels.

### Who gets pulled into review

`.github/CODEOWNERS` routes by path. Touching more than you need to slows the PR down.

| Path | Reviewers |
|---|---|
| `/content/events/`, `/data/events/`, `/data/sponsors/`, `/static/events/`, `/assets/` | `@devopsdays/content-reviewers` — the routine content path |
| `/themes/devopsdays-theme/` | `@devopsdays/theme-maintainers` |
| `/utilities/`, `/config/`, `/archetypes/`, `/content/page/`, `/data/core.toml` | `@devopsdays/code-reviewers` |
| `/.github/`, `/bin/`, `/.devcontainer/`, `netlify.toml`, `package.json`, `.nvmrc`, `.gitignore` | `@devopsdays/build-infra` |

## Further reading

- [CONTRIBUTING.md](CONTRIBUTING.md) — setup, pull requests, maintainer guidelines
- [utilities/README.md](utilities/README.md) — the organizer handbook
- [themes/devopsdays-theme/reference.md](themes/devopsdays-theme/reference.md) — every field and shortcode
- [utilities/docs/workflow/README.md](utilities/docs/workflow/README.md) — team review workflow before opening a PR
- [utilities/docs/using-codespaces/README.md](utilities/docs/using-codespaces/README.md) — working without a local Hugo
- [utilities/docs/cancel-event.md](utilities/docs/cancel-event.md) — cancelling an event
