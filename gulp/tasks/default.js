var gulp = require('gulp'),
  runSequence = require('run-sequence');

gulp.task('default', function (callback) {
  runSequence('responsive-images', 'copy-static-files', 'copy-js', 'copy-css', 'process-html')
})
