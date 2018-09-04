var gulp = require('gulp'),
  gutil = require('gulp-util'),
  sass = require('gulp-sass'),
  sourcemaps = require('gulp-sourcemaps');


gulp.task('sass', function() {
    gulp.src('static/scss/site.scss')
    .pipe(sourcemaps.init())
    .pipe(sass({outputStyle: 'compressed'}))
        .on('error', gutil.log)
    .pipe(sourcemaps.write('./'))
    .pipe(gulp.dest('static/css'))
});
