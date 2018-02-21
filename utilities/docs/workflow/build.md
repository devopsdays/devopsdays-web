# Build Process

When merging to master, things work a little differently. In addition to the `hugo` command that builds the static pages, a few more steps take place. This is a WIP document to hopefully take information out of [@mattstratton](https://www.github.com/mattstratton)'s head and share it somewhere.

## `netlify.toml`

This tells Netlify how to build the site. The file looks like this:
``` toml
[context.production]
 command = "bin/netlify-production.sh"
 publish = "dist/"
 
[context.deploy-preview]
 command = "bin/netlify.sh"
 publish = "public/"
 
[context.production.environment]
 HUGO_VERSION = "0.36.1"
   
[context.deploy-preview.environment]
 HUGO_VERSION = "0.36.1"
  ```
Under the `production` and `deploy-preview` contexts, you should notice that the command references two different build scripts (documented below). It is also important to note that the publish directory is different; this is because in production, the build script send the output to the `dist` folder after processing it from the `public` folder. Since `deploy-preview` doesn't process any files, it can use the raw output from `public`

The two `environment` settings under the contexts specify the `hugo` version to use. If you want to test using a newer version of Hugo, you can set it in `context.deploy-preview.environment` first to see if it builds okay. *[More information on specifying Hugo versions.](https://www.netlify.com/blog/2017/04/11/netlify-plus-hugo-0.20-and-beyond/)*

## Scripts
The build scripts are located in the `bin` directory. They look like this:

### `netlify.sh`
``` sh
hugo version
hugo --theme=devopsdays-theme --buildDrafts=false --baseURL="$DEPLOY_PRIME_URL"
```
This script is used for `deploy-preview` (yes, the name is terrible). Key things to understand:
- It will echo the `hugo` version to help troubleshooting
- It sets the `baseURL` to the value of the current `deploy-preview` URL, so relative links will work.

### `netlify-production.sh`
``` sh
hugo version
hugo --theme=devopsdays-theme --buildDrafts=false --baseURL="$URL"
gulp
```
This script runs for `production`. It is similar to the `deploy-preview` version, with two specific differences:
- The `baseURL` is set to the URL as configured in Netlify (`www.devopsdays.org`)
- It runs the `gulp` command at the end to do all the extra processing (documented below)

## Production Processing
All of the post-Hugo processing for production is done via [gulp](https://gulpjs.com/). 

### `gulpfile.js`

This file is located at the root of the project, and it tells `gulp` to include everything in the `gulp/tasks` directory and to run `gulp/tasks/default.js`:

``` js
var requireDir = require('require-dir');

// Require all tasks in gulp/tasks, including subfolders
requireDir('./gulp/tasks', { recurse: true });
```

### gulp tasks
If we look at the `gulp/tasks/default.js` file, we can see what happens when we run `gulp`:
``` js
var gulp = require('gulp'),
  runSequence = require('run-sequence');

gulp.task('default', function (callback) {
  runSequence('responsive-images', 'copy-static-files', 'copy-js', 'copy-css', 'process-html')
})
```
The important bits are what happens under `runSequence`. That tells `gulp` to run those tasks in order. The tasks are defined in a similarly named file in the `gulp/tasks` directory:

#### `responsive-images.js`

The key of this task is from this snippet:
``` js
gulp.task('responsive-images', ['responsive-images-logos', 'responsive-speaker-images','responsive-sponsor-images', 'responsive-organizer-images','responsive-images-remaining'])
```
The specifics of each of those tasks are defined in the `responsive-images.js` script, but here's what they do, basically:
- Take every file matching `public/**/*logo-square.jpg` and create a 300x300 version with the same name, and a 600x600 version with the suffix `@2x`, and output it to `dist`
- Take every file matching `public/**/organizers/*.jpg` and create a 300x300 version with the same name, and a 600x600 version with the suffix `@2x`, and output it to `dist`
- Take every file matching `public/**/speakers/*.jpg` or `public/**/speakers/*.png` and create a 200 pixel wide version with the same name, and a 600x600 version with the suffix `@2x`, and output it to `dist`
- Take every file matching `public/img/sponsors/*.png` or `public/img/sponsors/*.jpg` and create a 300x300 version with the same name, and a 400 pixel wide version with the suffix `@2x`, and output it to `dist`
- Take every file matching `public/**/*.png`, `public/**/*.jpg`, or `public/**/*.jpeg` (except the ones listed above) and create versions of the same size named both the original name and with the `@2x` suffix, and output them to `dist`

#### `copy-static-files.js`

This script copies all static files that don't need processing, including CSS maps, web fonts, PDF's, favicons, etc, to the `dist` directory.

#### `copy-js.js`

``` js
gulp.task('copy-js', function(){
  return gulp.src('public/js/*min.js')
  .pipe(gulp.dest('dist/js'))
})
```
Copies only the minified javascripts to the `dist` location.

#### `copy-css.js`
Copies the CSS files to the `dist` directory. Probably could be moved into the `copy-static-files.js` script, but it works fine this way for now :)

#### `process-html.js`
``` js
gulp.task('process-html', function(callback) {
    runSequence('min-html', 'retina-html',
        callback
    )
})

gulp.task('copy-html', function(){
  return gulp.src('public/**/*.html')
  .pipe(gulp.dest('dist'))
})

var retinaOpts = {
    suffix: {1: '', 2: '@2x'}
};

gulp.task('min-html', function() {
    return gulp.src('public/**/*.html')
        .pipe(htmlmin({
            collapseWhitespace: true
        }))
        .pipe(gulp.dest('dist'));
})

gulp.task('retina-html', function() {
    return gulp.src(['dist/**/*.html'])
        .pipe(imgRetina(retinaOpts))
        .on('error', function(e) {
            console.log(e.message);
        })
        .pipe(gulp.dest('dist'));
})
```
First, this minifies the HTML (removes whitespace, etc) and then it spins through all the image tags and adds the retina updates to point to the `@2x` files. Finally, it copies the output to the `dist` directory.
