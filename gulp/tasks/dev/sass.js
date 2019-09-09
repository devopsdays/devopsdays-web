var gulp = require('gulp'),
  sass = require('gulp-sass'),
  sourcemaps = require('gulp-sourcemaps');

sass.compiler = require('node-sass');

gulp.task('sass', function () {
    return gulp.src('themes/devopsdays-theme/static/scss/site.scss')
        .pipe(sourcemaps.init())
        .pipe(sass({ style: 'compressed' }).on('error', sass.logError))
        .pipe(sourcemaps.write('./'))
        .pipe(gulp.dest('themes/devopsdays-theme/static/css'));
  });
