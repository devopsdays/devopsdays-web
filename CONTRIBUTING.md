# Contributing to devopsdays-web

This document contains the technical details on how to set up [Hugo](https://gohugo.io/) (to see your edits locally before pushing them to GitHub), and how to prepare a Pull Request for inclusion on the [devopsdays](http://www.devopsdays.org/) website.

If you'd like to assist in contributing to the code of the website, please see [devopsdays/devopsdays-theme](https://github.com/devopsdays/devopsdays-theme).

## Setup

If you'd like to edit a specific devopsdays event site (and/or contribute code), here's how to get started:

### Quick Overview

1. Install [Hugo v0.22+](http://gohugo.io).
1. Fork this repo.

### View site locally

To watch for changes and rebuild on the fly, open a new terminal, change directories to your fork of the repo, and execute the following:

```
hugo server -w --baseUrl="http://localhost:1313"
```

Now open `http://localhost:1313` in a browser and navigate to the content that you're editing - voilà!

## Pull requests

### Process


Make your own [fork](https://help.github.com/articles/fork-a-repo/) of the `devopsdays-web` repository.

Add the source repository as a remote called "upstream":

```
git remote add upstream git@github.com:devopsdays/devopsdays-web.git
```
or
```
git remote add upstream https://github.com/devopsdays/devopsdays-web.git
```

Before starting any new change, it is essential that you `rebase` your local repository from the upstream. Issue these commands:


 - `git checkout master`
 - `git pull upstream master --rebase`


 This confirms you are on the master branch locally, and then applies the changes from the upstream to your copy.
 

Create a new local [branch](https://help.github.com/articles/about-branches/) for your changes. This helps to keep things tidy!

  ```
  $ git checkout -b fix_that_thing
  ```
  (Replace `fix_that_thing` with a quick description of your *actual* change.)


Make your changes, test them locally (see above), then push that branch up to `origin` on your fork.

  ```
  $ git push origin fix_that_thing
  ```

6. Submit a [Pull Request](https://help.github.com/articles/using-pull-requests/) for the branch you just pushed. Please title the pull request according to the event affected, i.e., `[CHI-2017] Add Bluth Company as a sponsor`
7. Take a break - you've earned it!
8. When a commit is merged to `master` on GitHub (ideally via a PR reviewed by at least one other person), `Netlify` (a build tool) will automatically build the site and publish it to [http://www.devopsdays.org](http://www.devopsdays.org).

### Guidelines

1. Code changes that affect the overall site will be merged only in the [devopsdays-theme](https://github.com/devopsdays/devopsdays-theme) repo. Theme changes should be made there, and when released, will be used in this repo.
1. We use [github issues](https://github.com/devopsdays/devopsdays-theme/issues) to track work, so feel free to create new issues if you like (or read/comment on existing ones).
1. If you are proposing a change that affects the overall site, and is not tied to an existing issue, please open a [new issue](https://github.com/devopsdays/devopsdays-theme/issues) so that it can be discussed by the team, prior to submitting a pull request.

### Only make changes to event content files
"Content" means anything inside the `/content/...`, `/data/...`, or `/static/...` directories.

Changes to event-specific content should be submitted in a separate PR from changes to more general content for the whole site.


## Maintainer Guidelines

If you have permissions to merge PRs on this repo, here are a few guidelines to consider:

1. Is the requestor authorized to make changes for that event? They need to appear on the contact list for the year and city they're editing.
1. Do not allow any PRs that change files outside of the above-mentioned "content" directories. Especially watch out for `.gitignore`, `config.toml`, `config-windows.toml`, and anything in the `themes` directory. Our bot will notify maintainers for any changes to non-content files and assign the PR's to the maintainers, so that should help.
1. Check to see if the tests pass, but use your judgement on merging something that fails (see "PR Tests" below for guidance)
1. If you are unsure about merging a PR, please use the "request a review" button on the PR to request one from other maintainers.
1. If you're reviewing all the details of a PR before merging or are communicating with the *Submitter*, add yourself to *Assignees* so that others know someone is waiting on a response or reviewing all the details of the PR thoroughly. Be sure to also add a comment into the PR that you are reviewing it, and if you need a change from the *Submitter* prior to merge, be sure to label the PR as `do-not-merge`.

### PR Tests

The following tests run when a PR is submitted:

1. [Travis](https://travis-ci.org/devopsdays/devopsdays-web/) - this is a basic test that confirms that the site can be built with Hugo on linux, and it runs an `html-min` gulp task which will identify if there is any invalid HTML in the site. This protects the final build, so if the Travis tests fail, please take a look as to why they failed.
1. [Appveyor](https://ci.appveyor.com/project/DevOpsDays/devopsdays-web) - this again is a small test that builds Hugo on Windows, to ensure that no Windows-incompatible files have been included. If Appveyor tests fail, merge at your own discretion, based upon the failure reason.
1. [Gitmagic](https://gitmagic.io/) - This is a bot that makes sure our pull requests are fashioned cleanly. See [contributing.json](https://github.com/devopsdays/devopsdays-web/blob/master/contributing.json) for a list of rules that we enforce.
1. [Netlify](https://app.netlify.com/sites/devopsdays-web) - This is a very useful test. It builds the site, and hosts an ephemeral preview version of it (viewable by clicking on the "details" link next to the test once it has turned green). It's pretty important to view this "deploy preview" if the PR has changed anything significant (adding a sponsor, etc, probably not...but changing content in a large way? Yes.)

## Credits

Thanks to Jess Frazelle [@jfrazelle](https://github.com/jfrazelle) for clueing us into the awesome previews with [Netlify](https://www.netlify.com)!
