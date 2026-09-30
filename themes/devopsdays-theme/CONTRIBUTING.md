# Contributing to devopsdays-theme

The technical details on how to set up your local development environment for making changes to the `devopsdays-theme` [Hugo](https://gohugo.io/) theme for the [devopsdays](http://www.devopsdays.org/) website.

# Table of contents
<!-- MDTOC maxdepth:6 firsth1:1 numbering:0 flatten:0 bullets:1 updateOnSave:1 -->

- [Contributing to devopsdays-theme](#contributing-to-devopsdays-theme)
- [Table of contents](#table-of-contents)
   - [Dev Setup](#dev-setup)
   - [Design Principles](#design-principles)
      - [Frameworks](#frameworks)
      - [Blocks](#blocks)
      - [CSS and SCSS](#css-and-scss)
         - [`site.scss`](#sitescss)
         - [`custom-variables.scss`](#custom-variablesscss)
         - [`custom.scss`](#customscss)
      - [Colors and Layout](#colors-and-layout)
   - [Asset Pipeline](#asset-pipeline)
   - [Workflow](#workflow)
      - [Issues](#issues)
         - [Collection of issues](#collection-of-issues)
      - [GitHub Labels](#github-labels)
      - [Pull Requests](#pull-requests)

<!-- /MDTOC -->

## Dev Setup

The theme is vendored into this repository at `themes/devopsdays-theme/` - it is not a submodule, so you edit it in place.

```bash
npm install
make deps     # copy Bootstrap and jQuery from node_modules into assets/
make server   # build the SCSS and JS, and start Hugo on http://localhost:1313
```

Use the Hugo version pinned in [.github/workflows/hugo.yml](../../.github/workflows/hugo.yml), and use the **extended** build - the theme compiles SCSS through Hugo Pipes.

## Design Principles

### Frameworks

We use [Boostrap v4.3](https://getbootstrap.com/docs/4.3/getting-started/introduction/) as our basic framework.

### Blocks
All page templates should make use of the `layouts/_default/baseof.html` file. This file contains all wrappers for the content. Anything within the `{{- block "main" . }} {{- end -}}` section is what will be displayed on a sub-template. Include a `{{ define "main" }}` block in your template to include what should be rendered.

### CSS and SCSS
All CSS is generated with SCSS. The SCSS files are located in `assets/scss`.

#### `site.scss`
This is the file that imports all the other SCSS files, including Bootstrap, font-awesome, jssocials, and the jquery oembed. It also imports our custom variables and any other customizations.

#### `custom-variables.scss`
Use this to set any SCSS variables, or to over-ride any variables used by Bootstrap.

#### `custom.scss`
This is the only place you should declare custom SCSS or CSS code.

### Colors and Layout
The core colors are defined in `assets/scss/custom-variables.scss`; everything else is in `assets/scss/custom.scss`. The program element colors are documented in [reference.md](reference.md#program-element-colors).

(The style guide that used to live in the standalone `devopsdays/devopsdays-theme` repository is no longer available; that repository is archived and its `STYLE.md` has not been migrated here.)

## Asset Pipeline
The site uses Hugo Pipes to handle asset processing. This means that:

1. SCSS files are automatically compiled to CSS when the site is built
2. JavaScript files are automatically concatenated, minified, and fingerprinted
3. Source maps are generated for both CSS and JavaScript

If there are changes to the bootstrap library, you will need to run the following command to update the dependencies:

```bash
npm install
make deps  # Copies dependencies from node_modules to assets directory
make server  # Starts the Hugo development server
```

The `make deps` command will:
- Copy required SCSS files from node_modules to `assets/scss/`
- Copy required JavaScript files from node_modules to `assets/js/`

The `make server` command will:
- Process all SCSS files into CSS
- Process all JavaScript files
- Start a development server at http://localhost:1313

## Workflow

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
- `rfc`: Issues where feedback is needed before moving forward on how to best address.

### Pull Requests

Please submit your proposed changes as a Pull Request against this repository. If the PR will resolve an issue, please add `Fixes #123` to the PR.
