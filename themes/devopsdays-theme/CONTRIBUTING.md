# Contributing to devopsdays-theme

The technical details on how to set up your local development environment for making changes to the `devopsdays-theme` [Hugo](https://gohugo.io/) theme for the [Devopsdays](http://www.devopsdays.org/) website.

# Table of contents
<!-- MDTOC maxdepth:6 firsth1:1 numbering:0 flatten:0 bullets:1 updateOnSave:1 -->

- [Contributing to devopsdays-theme](#contributing-to-devopsdays-theme)   
- [Table of contents](#table-of-contents)   
   - [Dev Setup](#dev-setup)   
   - [How can I help?](#how-can-i-help)   
   - [Design Principles](#design-principles)   
      - [Frameworks](#frameworks)   
      - [Blocks](#blocks)   
      - [CSS and SCSS](#css-and-scss)   
         - [`site.scss`](#sitescss)   
         - [`custom-variables.scss`](#custom-variablesscss)   
         - [`custom.scss`](#customscss)   
      - [Colors and Layout](#colors-and-layout)   
   - [Continuous Integration](#continuous-integration)   
      - [Asset Pipeline](#asset-pipeline)   
   - [Workflow](#workflow)   
      - [Milestones](#milestones)   
      - [Issues](#issues)   
         - [Collection of issues](#collection-of-issues)   
      - [GitHub Labels](#github-labels)   
      - [Pull Requests](#pull-requests)   
   - [Releasing](#releasing)   

<!-- /MDTOC -->

## Dev Setup

Working with a Hugo theme outside of a content-based repo has a few challenges. The `devopsdays-theme` repo contains a directory called `exampleSite`, which is what is used for testing theme development. The `config.toml` for the `exampleSite` contains the following value:

```
themesdir = "../.."
```

This tells Hugo where to look for its theme directories. This requires Hugo 0.18 or later.

You will need to run your watch command from the `exampleSite` directory; use something like this:

```
hugo server -w --baseUrl="http://localhost:1313"
```

NOTE: If you also load the existing `devopsdays-web` project, it is highly suggested that you use the `-p` flag on `hugo server` to load this theme on a different port. This will prevent your browser from caching assets like stylesheets, etc, from the other instance.

## How can I help?

Sort the existing GitHub issues for the tag of `ready`. These are issues that can be worked on. If they are already assigned to someone, please consult with that person before starting work. If you are going to work on an issue, please assign it to yourself.

## Design Principles

### Frameworks

We use [Boostrap v4 Alpha](http://v4-alpha.getbootstrap.com/) as our basic framework.

### Blocks
All page templates should make use of the `layouts/_default/baseof.html` file. This file contains all wrappers for the content. Anything within the `{{- block "main" . }} {{- end -}}` section is what will be displayed on a sub-template. Include a `{{ define "main" }}` block in your template to include what should be rendered.

### CSS and SCSS
All CSS must be generated with SCSS. The SCSS files are located in `static/scss`.

#### `site.scss`
This is the file that imports all the other SCSS files, including Bootstrap, font-awesome, jssocials, and the jquery oembed. It also imports our custom variables and any other customizations.

#### `custom-variables.scss`
Use this to set any SCSS variables, or to over-ride any variables used by Bootstrap.

#### `custom.scss`
This is the only place you should declare custom SCSS or CSS code.

### Colors and Layout
The design and layout can be found in [here](https://drive.google.com/file/d/0BzljU_vIF4BoOHhLV2Yzd2xicEk/view?usp=sharing). Please refer to the [Style Guide](https://github.com/devopsdays/devopsdays-theme/blob/master/STYLE.md) for all colors, fonts, and sizes of text elements, etc.

## Continuous Integration
The `devopsdays-theme` repo has hooks into Travis, Appveyor, and Netlify. Currently, the Travis build doesn’t do very much (the intent is to add some testing using Casper.js for web testing, but no tests have been written). The Appveyor tests ensure that the site can build with Windows.

All changes are built by Netlify to https://dev.devopsdays.org once merged to master.

### Asset Pipeline
Peruse the `gulpfile.js` to see what is processed for the asset pipeline. Gulp is only called when changes are merged to master. Pull requests, and local changes will not trigger gulp.

## Workflow

Our workflow is inspired by [Ian Bickering's guide to using GitHub Issues](http://www.ianbicking.org/blog/2014/03/use-github-issues-to-organize-a-project.html).

### Milestones

**Stuff we are doing right now:** this is the “main” milestone. We give it a minor SemVer name (like 1.2 or 2.3). We create a new milestone when we have released a new minor version.

**Stuff we’ll probably do soon:** this is the standing [“Next Tasks” milestone](https://github.com/devopsdays/devopsdays-theme/milestone/4). We never change or rename this milestone.

**Stuff we probably won’t do soon:** this is the standing [“Blue Sky” milestone](https://github.com/devopsdays/devopsdays-theme/milestone/3). We refer to these tickets and sometimes look through them, but they are easy to ignore, somewhat intentionally ignored.

**What aren’t we sure about?:** issues with no milestone.

There should be no other milestones; issues that are logged as `bug` or `enhancement` will be prioritized into the milestone when we are ready to work on them. Only issues with the tag of `ready` should be worked on.


### Issues

All changes should be driven by issues (this is because our changelog generator is issue-driven). So before you implement a bugfix or an enhancement, you should make sure an issue has been created and properly tagged. These are the issue labels that really matter:

**Bug:** Something is broken in the theme and needs fixing. These issues should be set with a label of `bug`, and will be tagged with `ready` when they are ready to be worked on.

**Enhancement:** Adding new functionality to the theme. These issues should be set with a label of `enhancement`, and will be tagged with `ready` when they are ready to be worked on.

Only repository contributors can add tags to issues; if you do not have permission to tag an issue, please prepend the title with `[BUG]` or `[ENHANCEMENT]` as appropriate.

#### Collection of issues

Sometimes we have a collection of work that has to go together. This could be a release checklist, or perhaps a more complicated feature. In this case, create a "master" issue which links in its description to the sub-issues. We like to use the [checklist feature](https://github.com/blog/1375-task-lists-in-gfm-issues-pulls-comments) of GH issues for this; checking them off as the issues are closed.

### GitHub Labels

These are the labels we use, and what they mean:

- `bug`: Something is broken in the theme and needs fixing.
- `enhancement`: Add new functionality to the site/theme.
- `do-not-merge`: Only used by pull requests; means that this PR is a work in progress and not ready for merging.
- `duplicate`: This issue is handled by another issue. When marking an issue "duplicate", please link to the tracked issue.
- `help wanted`: This is a label for issues where the main contributors are actively seeking outside help.
- `needs-review`: Only used by pull requests; indicates that a review is required prior to merging.
- `rfc`: Issues where feedback is needed before moving forward on how to best address.
- `ready`: This issue can/should be worked on. Issues not marked as "ready" means they haven't been prioritized.

### Pull Requests

Please submit your proposed changes as a Pull Request against this repository. If the PR will resolve an issue, please add `Fixes #123` to the PR.

## Releasing

See [utils/README](https://github.com/devopsdays/devopsdays-theme/blob/master/utils/README.md) for instructions.
