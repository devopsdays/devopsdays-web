var gulp = require('gulp'),
    runSequence = require('run-sequence');

gulp.task('copy-misc-files', function() {
    return gulp.src(['public/sitemap.xml', 'public/**/index.xml', 'public/tags/**/*.xml', 'public/**/sharing.jpg', 'public/favicon*', 'public/apple-icon*', 'public/android-icon*', 'public/ms-icon*', 'public/manifest.json', 'public/browserconfig.xml', 'public/**/*.pdf', 'public/**/*.gif', 'public/_redirects', 'public/robots.txt'])
        .pipe(gulp.dest('dist'));
});

gulp.task('copy-fonts', function() {
    return gulp.src('public/fonts/**/*.*')
        .pipe(gulp.dest('dist/fonts'));
})

gulp.task('copy-css-maps', function() {
    return gulp.src('public/css/**/*.map')
        .pipe(gulp.dest('dist/css'));
})

gulp.task('copy-other-images', function() {
  return gulp.src(['public/**/*.png', 'public/**/*.jpg','public/**/*.jpeg',
          '!public/favicon*', '!public/apple-icon*', '!public/android-icon*', '!public/ms-icon*', '!public/**/sharing.jpg', '!**/logo-square.*', '!public/img/sponsor/*.*', '!public/**/organizers/*.jpg'])
      .pipe(gulp.dest('dist'));
})

// gulp.task('copy-static-files', function(callback) {
//     runSequence('copy-misc-files', 'copy-fonts', 'copy-css-maps',
//         callback
//     )
// })

gulp.task('copy-static-files', ['copy-misc-files', 'copy-fonts', 'copy-css-maps', 'copy-other-images'])


// gulp.task('copy-images', function(callback) {
//     return gulp.src(['public/**/*.png', 'public/**/*.jpg',
//             '!public/favicon*', '!public/apple-icon*', '!public/android-icon*', '!public/ms-icon*','!public/img/sponsors/*.png', '!public/img/sponsors/*.jpg','!public/events/**/logo-square.*'
//         ])
//         .pipe(gulp.dest('staging'));
// })
