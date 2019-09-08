var gulp = require('gulp');

gulp.task('dev', gulp.series('npm', 'sass', 'js-concat'));