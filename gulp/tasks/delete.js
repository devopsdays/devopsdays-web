var gulp = require('gulp'),
    del = require('del');


gulp.task('delete', function() {
    return del.sync(['public/', 'staging/', 'dist/']);
})
