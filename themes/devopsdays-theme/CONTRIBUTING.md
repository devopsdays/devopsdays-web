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
   - [Releasing](#releasing)

<!-- /MDTOC -->

## Dev Setup

One of the more important things to know is that if you are going to make changes to CSS or JavaScript, you will need to be able to run the scripts that compile the SCSS files to CSS, and also concatenate and minifiy the JavaScript we use. In order to do this, you need the following installed on your local machine:

- [node](https://nodejs.org/en/)
- [npm](https://www.npmjs.com/get-npm)
- [gulp](https://gulpjs.com/)

Once you have these install, navigate to the root of `devopsdays-web` in a terminal, and run `npm install` to get all the pieces installed into `devopsdays-web`. The `node_modules` directory is not committed to source control, so you will have to run `npm install` any time you are setting up a new copy of the repo on a workstation.

## Design Principles

### Frameworks

We use [Boostrap v4.3](https://getbootstrap.com/docs/4.3/getting-started/introduction/) as our basic framework.

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

## Asset Pipeline
If you make changes to SCSS files, or the `themes/devopsdays-theme/static/js/devopsdays.js` file, you will need to run a `gulp` task to compile the SCSS to CSS and to concatenate and minify the Javascript files.

To run this, navigate to the root of `devopsdays-web` in your terminal, and run `gulp dev`. If you get errors, you likely don't have `node`, `npm`, and/or `gulp` installed. You also may not have run `npm install`.

The output of `gulp dev` should look something like this:

```
[12:31:47] Using gulpfile ~/src/github.com/devopsdays/devopsdays-web/gulpfile.js
[12:31:47] Starting 'dev'...
[12:31:47] Starting 'js-concat'...
[12:31:50] Finished 'js-concat' after 3.51 s
[12:31:50] Starting 'sass'...
[12:31:51] Finished 'sass' after 652 ms
[12:31:51] Finished 'dev' after 4.16 s
```

After running, you should see updates to the following files in `themes/devopsdays-theme/static`:
- `css/site.css`
- `css/site.css.map`
- `js/devopsdays-min.js`
- `js/devopsdays-min.js.map`

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
