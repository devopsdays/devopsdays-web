var gulp = require('gulp'),
  sass = require('gulp-sass')(require('sass')),
  sourcemaps = require('gulp-sourcemaps');

gulp.task('sass', function () {
    return gulp.src('themes/devopsdays-theme/static/scss/site.scss')
        .pipe(sourcemaps.init())
        .pipe(sass.sync({ style: 'compressed' }).on('error', sass.logError))
        .pipe(sourcemaps.write('./'))
        .pipe(gulp.dest('themes/devopsdays-theme/static/css'));
  });
