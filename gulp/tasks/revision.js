var gulp = require('gulp'),
    rev = require('gulp-rev'),
    revReplace = require('gulp-rev-replace');


gulp.task('revision', function(){
  return gulp.src(['staging/**/*.+(png|jpg|jpeg|gif|svg|js|css)','!staging/favicon*', '!staging/apple-icon*', '!staging/android-icon*', '!staging/ms-icon*', '!staging/**/sharing.jpg'])
  .pipe(rev())
  .pipe(gulp.dest('dist'))
  .pipe(rev.manifest())
  .pipe(gulp.dest('dist'))
});

gulp.task('revision-update', function(){
  var manifest = gulp.src('dist/rev-manifest.json');

  return gulp.src(['staging/**/*.html', 'staging/**/*.xml', 'staging/**/*.css'])
      .pipe(revReplace({manifest: manifest, replaceInExtensions: ['.html', '.xml', '.css']}))
      .pipe(gulp.dest('dist'));
});
