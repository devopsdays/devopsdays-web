var gulp = require('gulp'),
    htmlmin = require('gulp-htmlmin');

gulp.task('min-html', function(){
  return gulp.src('public/**/*.html')
    .pipe(htmlmin({collapseWhitespace: true}))
    .pipe(gulp.dest('public'));
});
