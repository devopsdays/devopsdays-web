var gulp = require('gulp');
/**
 * Run all tasks needed for a build in defined order
 */
gulp.task('build', function(callback) {
    runSequence('delete', [
            'hugo'
        ],
        callback);
});
