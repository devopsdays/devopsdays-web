# Contributing to devopsdays-theme

The technical details on how to set up your local development environment for making changes to the `devopsdays-theme` [Hugo](https://gohugo.io/) theme for the [Devopsdays](http://www.devopsdays.org/) website.

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

Our workflow is very much a work in progress, but follow these guidelines.

### Milestones

**Stuff we are doing right now:** this is the “main” milestone. We give it a minor SemVer name (like 1.2 or 2.3). We create a new milestone when we have released a new minor version.

There should be no other milestones; issues that are logged as `bug` will be prioritized into the milestone when we are ready to work on them. Only issues with the tag of `ready` should be worked on.

Feature requests can be created at https://www.devopsdays.org/ideas. The roadmap for feature development can always be viewed at https://www.devopsdays.org/roadmap. If you would like to participate in the roadmap development/feature discussion, please contact @mattstratton for access to ProdPad.

### Issues

All changes should be driven by issues (this is because our changelog generator is issue-driven). So before you implement a bugfix or an enhancement, you should make sure an issue has been created and properly tagged. These are the issue labels that really matter:

**Bug:** Something is broken in the theme and needs fixing. These can be created directly in GitHub and should not be created in ProdPad.

**Enhancement:** Adding new functionality to the theme. These issues should not be created by hand; they will be driven by ProdPad and set to tags including `ready` and `enhancement` when they are ready to be worked on.

#### Collection of issues

Sometimes we have a collection of work that has to go together. This could be a release checklist, or perhaps a more complicated feature. In this case, create a "master" issue which links in its description to the sub-issues. We like to use the [checklist feature](https://github.com/blog/1375-task-lists-in-gfm-issues-pulls-comments) of GH issues for this; checking them off as the issues are closed.

### Pull Requests

Please submit your proposed changes as a Pull Request against this repository. If the PR will resolve an issue, please add `Fixes #123` to the PR.

## Releasing

To cut a new release, a tag must be created. This will trigger Travis to deploy a new release. Follow these steps:

1. Update the `theme_version` key in `theme.toml` to the new version.
1. Make sure you have the [`github_changelog_generator`](https://github.com/skywinder/github-changelog-generator) gem installed on your system.
1. Inside the repository, run `github_changelog_generator --future-release "x.x.x`.
1. Run `git add CHANGELOG.md theme.toml`
1. Add the appropriate tag to the latest commit. The tags are named by the SemVer version number of the theme, with only numbers (that is, `1.1.31` vs `v1.1.31`)
1. Push to `origin master`, including tags (if you don't know how to do this, ask!)
