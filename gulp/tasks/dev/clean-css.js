var gulp = require('gulp'),
    cleanCSS = require('gulp-clean-css');

gulp.task('minify-css', () => {
    return gulp.src('themes/devopsdays-theme/static/css/site.css')
      .pipe(cleanCSS({debug: true}, (details) => {
        console.log(`${details.name}: ${details.stats.originalSize}`);
        console.log(`${details.name}: ${details.stats.minifiedSize}`);
      }))
    .pipe(gulp.dest('themes/devopsdays-theme/static/css/'));
  });