# Contributing to devopsdays-web

This document contains the technical details on how to set up [Hugo](https://gohugo.io/) (to see your edits locally before pushing them to GitHub), and how to prepare a pull request to make changes to content on the [devopsdays](https://www.devopsdays.org/) website.

If you'd like to assist in contributing to the code itself (as opposed to the content) of the website, please see [devopsdays/devopsdays-theme](https://github.com/devopsdays/devopsdays-theme).

## Setup

If you'd like to edit a specific devopsdays event site (and/or contribute code), here's how to get started:

### Quick Overview

1. Install [Hugo](http://gohugo.io). The current Hugo version we're using can be found in the [.circleci/config.yml](https://github.com/devopsdays/devopsdays-web/blob/master/.circleci/config.yml) file. [(Quick Install)](https://gohugo.io/getting-started/installing#binary-cross-platform)
1. [Fork](https://help.github.com/articles/fork-a-repo/) this repo and clone a copy locally.

### View site locally

To watch for changes and rebuild on the fly, open a new terminal, change directories to your fork of the repo, and execute the following:

```
hugo server -w --baseUrl="http://localhost:1313"
```

Now open `http://localhost:1313` in a browser and navigate to the content that you're editing - voilà!

## Pull requests

### Setting your fork up the first time

Make your own [fork](https://help.github.com/articles/fork-a-repo/) of the `devopsdays-web` repository.

Add the source repository as a remote called "upstream":

```
git remote add upstream git@github.com:devopsdays/devopsdays-web.git
```
or
```
git remote add upstream https://github.com/devopsdays/devopsdays-web.git
```

You only need to create your fork once, as long as you don't delete it.


### Editing your site

1. Before starting any new change, it is essential that you `rebase` your local repository from the upstream. You may think that working from your fork is enough, but sometimes upstream changes will affect your work in ways you may not anticipate, so you'll want to stay current. Issue these commands:


 - `git checkout master`
 - `git pull upstream master --rebase`


This confirms you are on the master branch locally, and then applies the changes from the upstream to your copy.


2. Create a new local [branch](https://help.github.com/articles/about-branches/) for your changes. This helps to keep things tidy!

  ```
  $ git checkout -b fix_that_thing
  ```
  (Replace `fix_that_thing` with a quick description of your *actual* change.)


3. Make your changes, test them locally (see above), then push that branch up to `origin` on your fork.

  ```
  $ git push origin fix_that_thing
  ```

4. Submit a [Pull Request](https://help.github.com/articles/using-pull-requests/) for the branch you just pushed. Please title the pull request according to the event affected, i.e., `[CHI-2017] Add Bluth Company as a sponsor`
5. Optionally, open your [pull request](https://github.com/devopsdays/devopsdays-web/pulls) in a browser and look at the preview that `Netlify` (a build tool) built.
6. You can mention on devopsdays Slack's #website if you'd like a PR merged quickly. (Availability of maintainers varies.)
7. When a commit is merged to `master` on GitHub, Netlify will automatically build the site and publish it to [https://www.devopsdays.org](https://www.devopsdays.org).

### Guidelines

1. Code changes that affect the overall site will be merged only in the [devopsdays-theme](https://github.com/devopsdays/devopsdays-theme) repo. Theme changes should be made there, and when released, will be used in the `devopsdays-web` repo.
1. We use [github issues](https://github.com/devopsdays/devopsdays-theme/issues) to track work, so feel free to create new issues if you like (or read/comment/work on existing ones).
1. If you are proposing a change that affects the overall site, and is not tied to an existing issue, please open a [new issue](https://github.com/devopsdays/devopsdays-theme/issues) so that it can be discussed by the team, prior to submitting a pull request.
1. If you're using CRLF line terminators (like on Windows), the site won't build correctly if the first `+++` line of frontmatter in speaker and program files ends in a space like `+++ `. The [workaround](https://github.com/devopsdays/devopsdays-theme/issues/652) is to remove the trailing space.

### How Changes are Merged
- A maintainer will merge the PR if it is mergable, as soon as the checks pass.
- If you do not want your PR merged immediately, in most cases you should not open the PR.
- Our [workflow guide](https://github.com/devopsdays/devopsdays-web/blob/master/utilities/docs/workflow/README.md) provides solutions to most `WIP` use cases without opening a PR.
- Questions about specific cases not covered in the guide can be asked in the #website channel on devopsdays Slack.

### Acceptable changes

- In general, only make changes to event content files. "Event content" means anything inside the `/content/...`, `/data/...`, or `/static/...` directories.
- Changes to event-specific content should be submitted in a separate PR from changes to more general content for the whole site.

### Minimal large files

Generally speaking, you should avoid storing any files other than logos or small images inside the repo itself (out of consideration for your fellow devopsdays organizers who have to pull down this repo). Please follow these guidelines:

* Do not upload presentations or other artifacts from your event into this repo. Either link to the presentation on Speakerdeck/Slideshare from the presenter, or even better, create a Speakerdeck account for your event and put the presos there.
* Small web images are fine (logos, etc). If you have high-resolution versions of your logo to share with others, please do not host them on the devopsdays-web repo.
* It is acceptable to add in a single PDF for your sponsor prospectus if you desire (in `static/events/YYYY-city`), but please keep this file under 3 MB. It is better to host it on Google Drive or something similar, and then link to it from your site.
* OPTIONAL - you can host your PDFs for prospectus, etc, in the repo at [devopsdays/devopsdays-assets](https://github.com/devopsdays/devopsdays-assets) and then link to them from there. Files in that repo are presented under their relative URL at https://assets.devopsdays.org. For example, the file located at `static/events/2016/chicago/devopsdays-chicago-2016-prospectus.pdf` in the `devopsdays/devopsdays-assets` repo will be presented at `https://assets.devopsdays.org/events/2016/chicago/devopsdays-chicago-2016-prospectus.pdf`


## Maintainer Guidelines

If you have permissions to merge PRs on this repo, here are a few guidelines to consider:

1. Is the requestor authorized to make changes for that event? They need to appear on the contact list for the year and city they're editing.
1. Do not allow any PRs that change files outside of the above-mentioned "content" directories. Especially watch out for `.gitignore`, `config.toml`, `config-windows.toml`, and anything in the `themes` directory. Our bot will notify maintainers for any changes to non-event-content files and assign the PRs to the maintainers, so that should help.
1. Check to see if the tests pass, but use your judgement on merging something that fails (see "PR Tests" below for guidance)
1. If you are unsure about merging a PR, please use the "request a review" button on the PR to request one from other maintainers.
1. If you're reviewing all the details of a PR before merging or are communicating with the *Submitter*, add yourself to *Assignees* so that others know someone is waiting on a response or reviewing all the details of the PR thoroughly. Be sure to also add a comment into the PR that you are reviewing it, and if you need a change from the *Submitter* prior to merge, be sure to label the PR as `do-not-merge`.

### PR Tests

The following tests run when a PR is submitted:

1. [CircleCI](https://circleci.com/gh/devopsdays/devopsdays-web) - this test confirms that the site can be built with Hugo on linux, and it runs an `html-min` gulp task which will identify if there is any invalid HTML in the site. This protects the final build, so if the CircleCI build or test jobs fail, please take a look as to why they failed.
1. [Appveyor](https://ci.appveyor.com/project/DevOpsDays/devopsdays-web) - this test builds Hugo on Windows, to ensure that no Windows-incompatible files have been included. If Appveyor tests fail, merge at your own discretion, based upon the failure reason.
1. [Netlify](https://app.netlify.com/sites/devopsdays-web) - this test builds the site, and hosts an ephemeral preview version of it (viewable by clicking on the "details" link next to the test once it has turned green). It's a good idea to view this "deploy preview" if the PR has changed anything significant (adding a sponsor, etc, probably not...but changing content in a large way? Yes.)

## Credits

Thanks to Jess Frazelle [@jfrazelle](https://github.com/jfrazelle) for clueing us into the awesome previews with [Netlify](https://www.netlify.com)!
