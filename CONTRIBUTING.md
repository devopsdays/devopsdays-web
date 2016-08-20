# Contributing to devopsdays-web

The technical details on how to set up [Hugo](https://gohugo.io/) (to see your local edits), and prepare a Pull Request for inclusion on the [Devopsdays](http://www.devopsdays.org/) website.

## Setup

If you'd like to edit a specific devopsdays event site (and/or contribute code), here's how to get started:

### Quick Overview

1. Install [Hugo v0.16+](http://gohugo.io).
1. Fork this repo.

### View site locally

To watch for changes and rebuild on the fly, open a new terminal, change directories to your fork of the repo, and execute the following:

```
hugo server -w --baseUrl="http://localhost:1313"`.
```

Now open `baseURL` in a browser and navigate to the content that you're editing - voilà!

### "ulimit" warnings or errors

At any point in this process you may see a message related to [ulimits](https://stackoverflow.com/questions/24955883/what-is-the-max-opened-files-limitation-on-linux), for example:

```
hugo server -w --baseUrl="http://localhost:1313"
[...]
Error: listen tcp 127.0.0.1:1313: socket: too many open files
```

You can correct it *temporarily* with this:

```
$ hugo check ulimisudo sysctl -w kern.maxfiles=65536
$ sudo sysctl -w kern.maxfilesperproc=65536
$ ulimit -n 65536 65536
```

Then in a new window:

```
$ hugo server -w --baseUrl="http://localhost:1313"
```

The changes noted above will be lost when you reboot. For a more permanent fix, add the following to `/etc/sysctl.conf` (run `touch /etc/sysctl.conf` first if the file doesn't exist; it likely does not):

```
kern.maxfiles=20480
kern.maxfilesperproc=24576
```

With that done, just reboot, and you should be ready to go!

### ulimits and OS X

Note that on OS X (which has notoriously low ulimits by default) you may need to make [additional changes](https://apple.stackexchange.com/questions/168495/why-wont-kern-maxfiles-setting-in-etc-sysctl-conf-stick) to your system.

## Pull requests

### Process

1. Make your own [fork](https://help.github.com/articles/fork-a-repo/) of the `devopsdays-web` repository.
1. Create a new local [branch](https://help.github.com/articles/about-branches/) for your changes. This helps to keep things tidy!
  ```
  $ git checkout -b fix_that_thing
  ```
  (Replace `fix_that_thing` with a quick description of your *actual* change.)

1. Make your changes, test them locally (see above), then push that branch up to `origin` on your fork.
  ```
  $ git push origin fix_that_thing
  ```

1. Submit a [Pull Request](https://help.github.com/articles/using-pull-requests/) for the branch you just pushed.
1. Take a break - you've earned it!
1. When a commit is merged to `master` on GitHub (ideally via a PR reviewed by at least one other person), `wercker` (a build tool) will automatically build the site and publish it to [http://www.devopsdays.org](http://www.devopsdays.org).

### Guidelines

1. Code changes that affect the overall site will be reviewed only if they are in a separate pull request from any event-specific content. In short, don't add "giant template change" in the same PR as "here are some more sponsors" - if it affects *anything other than your event*, it should be in its own PR.
1. We use [github issues](https://github.com/devopsdays/devopsdays-web/issues) to track work, so feel free to create new issues if you like (or read/comment on existing ones).
1. If you are proposing a change that affects the overall site, and is not tied to an existing issue, please open a [new issue](https://github.com/devopsdays/devopsdays-web/issues) so that it can be discussed by the team, prior to submitting a pull request.


## Advanced
If you are going to be making changes to the overall functionality of the site, please keep the following in mind:

### Changes to content should be separate from overall functionality
"Content" means anything inside the `/content/...`, `/data/...`, or `/static/...` directories.

Changes to content should be submitted as a separate PR from changes to site functionality. It would be additionally delightful if you label PR's for site functionality (such as `bug` or `enhancement`), but that's not required.

### CSS changes are done with LESS
Please do NOT make changes to any of the files in the `/themes/devopsdays-responsive/static/css` directory. These are files that are compiled via [LESS](http://lesscss.org/), and while your changes in there might work, they will be blown away by the LESS compiler at some point.

If you want to make changes to CSS, you will need a LESS compiler on your system. [@mattstratton](https://github.com/mattstratton) uses [CodeKit](https://incident57.com/codekit/), but that is OS X only, and is not free. Here's a list of other possible LESS compilers (note - Matt has not tested any of these):
- [SimpleLess](http://wearekiss.com/simpless) - all platforms, free.
- [Less.js](http://lesscss.org/) - node application, free.

The only place to make changes to the LESS files is in `/themes/devopsdays-responsive/static/site_variables.less` and `/themes/devopsdays-responsive/static/site.less`. Make sure your LESS compiler is compiling the output into `/themes/devopsdays-responsive/static/css/`. *DO NOT* make any changes to any other LESS file (do not directly modify the bootstrap LESS files, for example).

## Credits

Thanks to Jess Frazelle [@jfrazelle](https://github.com/jfrazelle) for clueing us into the awesome previews with [Netlify](https://www.netlify.com)!
