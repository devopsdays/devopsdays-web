var gulp = require('gulp');

gulp.task('dev', gulp.series('bower', 'sass', 'js-concat', 'watch'));
