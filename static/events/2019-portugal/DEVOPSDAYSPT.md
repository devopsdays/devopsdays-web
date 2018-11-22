# DEVOPSDAYS PORTUGAL INFO

## Run the server

```bash
hugo server -w --baseUrl="http://localhost:1313"
```

## Pull Requests Process

Make your own fork of the devopsdays-web repository. [DevOpsDays Portugal](https://github.com/devopsdaysportugal/devopsdays-web)

Add the source repository as a remote called "upstream":

```bash
git remote add upstream git@github.com:devopsdays/devopsdays-web.git
```

or

```bash
git remote add upstream https://github.com/devopsdays/devopsdays-web.git
```

## Before starting any new change

It's essential that you `rebase` your local repository from the upstream. Issue these commands:

```bash
git checkout master
git pull upstream master --rebase
```

This confirms you are on the master branch locally, and then applies the changes from the upstream to your copy.

Create a new local branch for your changes. This helps to keep things tidy!

```bash
$ git checkout -b fix_that_thing
```

(Replace fix_that_thing with a quick description of your actual change.)

Make your changes, test them locally, then push that branch up to origin on your fork.

```bash
$ git push origin fix_that_thing
```

Submit a Pull Request for the branch you just pushed. Please title the pull request according to the event affected, i.e., [CHI-2017] Add Bluth Company as a sponsor