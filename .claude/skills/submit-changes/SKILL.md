---
name: submit-changes
description: Use when event content or site changes are finished and need to reach devopsdays.org - covers branching, rebasing on upstream main, local preview, committing, pushing to a fork or to upstream, opening the pull request, and interpreting a failing check.
---

# Submit changes to devopsdays-web

Every other skill in this repository ends here. Work through the steps in order; do not skip or
reorder them.

Two rules that override convenience:

- **Never stage with `git add -A`.** `resources/`, `public/`, `node_modules/` and
  `.hugo_build.lock` live in the working tree. Stage by filename.
- **Never enable auto-merge, and never push without confirming with the person first.**

## 1. Work out where you are pushing

```bash
git remote -v
gh repo view devopsdays/devopsdays-web --json viewerPermission -q .viewerPermission
```

- `origin` is `devopsdays/devopsdays-web` **and** permission is `WRITE`, `MAINTAIN` or `ADMIN` →
  maintainer. Branch off `main`, push to `origin`, open the PR from that branch.
- Otherwise → fork workflow. `origin` should be the contributor's fork and `upstream` should be
  `devopsdays/devopsdays-web`. If `upstream` is missing:
  ```bash
  git remote add upstream https://github.com/devopsdays/devopsdays-web.git
  ```
  If there is no fork at all, tell the person to create one — do not fork on their behalf.

Call the upstream remote `$UPSTREAM` below (`origin` for maintainers, `upstream` otherwise).

## 2. Be on a branch, rebased on upstream main

Never commit to `main`.

```bash
git fetch "$UPSTREAM" main
git rev-parse --abbrev-ref HEAD    # if this says main, create a branch now
```

Branch names describe the change: `den-2026-add-cloudbees`, `boston-2026-speakers`.

```bash
git checkout -b <branch>          # only if not already on one
git rebase "$UPSTREAM"/main
```

If the rebase conflicts, **stop**. Report the conflicting files and let the person resolve them.
Do not push a half-finished rebase.

## 3. Offer a local preview

Optional — not everyone can run one, and that is fine. Offer it, and if nothing is available say
so and move on rather than failing.

```bash
./hugoserver.sh                                    # Docker, pinned version. Preferred.
make docker-server                                 # docker compose alternative
hugo server -w --baseURL="http://localhost:1313"   # needs local Hugo 0.152.2 extended
```

Tell them the URL of the page that changed, e.g.
`http://localhost:1313/events/2026-boston/sponsor/`. Hugo's watcher misses new and renamed files —
restart it after those.

A local Hugo that is *newer* than 0.152.2 may fail on images that CI accepts. If a local build
fails on an image under `assets/sponsors/`, that is a version difference, not your change.

## 4. Stage, by name

```bash
git status --short
git add <each file you actually changed>
git diff --cached --stat
```

Read the staged list back to the person before committing. If anything you did not touch appears,
unstage it.

## 5. Commit

Use the same convention as the PR title:

```
[DEN-2026] Add CloudBees as a Bronze sponsor
```

`[CITY-YYYY]` with either a city abbreviation or the city name. One logical change per commit.

## 6. Confirm before pushing

Say plainly:

- which remote and branch you are about to push to;
- that opening a PR here means **a maintainer may merge it as soon as the checks pass**;
- that if they are not ready, they should stop and use the team-preview workflow in
  `utilities/docs/workflow/README.md` instead of opening a PR.

Offer to print the commands so they can run them. **Wait for an explicit yes.**

## 7. Push

```bash
git push -u origin HEAD
```

If the rebase in step 2 rewrote history and the branch already exists on the remote, the push is
rejected. Use a lease, never a bare force:

```bash
git push --force-with-lease -u origin HEAD
```

If that fails with `cannot lock ref`, the remote branch exists but has never been fetched into
this checkout, so the lease expects it to be absent. Teach the lease what the remote holds and
retry the same command:

```bash
git fetch origin "$(git rev-parse --abbrev-ref HEAD)"
```

If that fetch shows the remote genuinely has commits this branch does not, **stop and report**.
Do not escalate to `--force`.

## 8. Open the pull request

Ready for review, not a draft — this project merges on green.

Title: `[CITY-YYYY] Short description`, under 70 characters.

The body **must be non-empty and must not contain the string `Bluth`** or
`.github/workflows/pr.yml` fails the PR. Sections in this order, omitting any that do not apply:

```
## Summary
<1-3 bullets: what changed, for which event>

## What to check in the deploy preview
<the specific page(s) a reviewer should open, e.g. /events/2026-boston/sponsor/>

## Organizer email
<only when organizers were added or removed - see step 8a>
```

```bash
gh pr create --title "<title>" --body "$(cat <<'BODY'
...
BODY
)"
```

For a fork, add `--repo devopsdays/devopsdays-web`.

### 8a. Organizer changes

If this PR adds or removes a `team_members` entry, the `## Organizer email` section is required
and must say that an email with full names, email addresses, and employers needs to go to
`info@devopsdays.org`. The merge is held until it is sent. Remind the person directly as well —
do not rely on them reading the PR body.

## 9. No auto-merge

Do not run `gh pr merge --auto`. Merging is a maintainer's deliberate action.

## 10. Watch the checks, and fix what fails

```bash
gh pr checks --watch
```

| Failing check | What it means | Fix |
|---|---|---|
| `Lint Filenames` | A file or directory you added has mixed case | `git mv` it to lowercase, then update whatever references it (`image =` in frontmatter, `id:` in YAML). All-caps names like `README.md` are fine; mixed case is not |
| `Pull Request Description Validation` | Body is empty or contains `Bluth` | `gh pr edit --body "..."` with real text |
| `Block sponsor asset changes` | You touched `static/img/sponsors/` | Revert those paths. Sponsor logos go in `assets/sponsors/<first-char>/` |
| `Build hugo on Linux` | Hugo failed | Read the error. Usual causes: `name:` missing from `main.yml`; `startdate` set with a blank `enddate`; a `program[].title` of `type: talk` that does not match a file in `program/`; a sponsor `id` with no `data/sponsors/<id>.yml`; an image referenced in frontmatter that is not on disk |
| `Check for large files` | A PDF or a big file | Comments only, does not block — but move it to `devopsdays-assets` anyway |

Netlify posts a **Deploy Preview** link on the PR. Give that URL to the person with the path to
their page appended — it is the only way most organizers will actually see their change.

## 11. Report back

Tell them: the PR URL, the check status, the deploy-preview URL for the page that changed, and
anything still outstanding (an organizer email, a missing image, a follow-up PR).
