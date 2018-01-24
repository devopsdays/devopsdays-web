var gulp = require('gulp');

gulp.task('copy-js', function(){
  return gulp.src('public/js/*min.js')
  .pipe(gulp.dest('dist/js'))
})
