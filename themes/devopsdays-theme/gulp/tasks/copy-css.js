var gulp = require('gulp');

gulp.task('copy-css', function(){
  return gulp.src('public/css/*.css')
  .pipe(gulp.dest('staging/css'))
})
