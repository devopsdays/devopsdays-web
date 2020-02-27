var gulp = require('gulp');
var HubRegistry = require('gulp-hub');

// load some files into the registry
var hub = new HubRegistry(['tasks/dev/*.js']);

// tell gulp to use the tasks just loaded
gulp.registry(hub);
gulp.task('dev', gulp.series('js-concat', 'sass'))
