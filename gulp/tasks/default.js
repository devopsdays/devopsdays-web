var gulp = require('gulp');
var HubRegistry = require('gulp-hub');
  // runSequence = require('run-sequence');

// gulp.task('default', function (callback) {
//   runSequence('copy-js', 'copy-css', 'copy-images', 'copy-html', 'revision', 'revision-update', 'copy-static-files',
//     callback
//   )
// })

// gulp.task('default', function (callback) {
//   runSequence('responsive-images', 'copy-static-files', 'copy-js', 'copy-css', 'process-html')
// })

// load some files into the registry
var hub = new HubRegistry(['tasks/*.js']);

// tell gulp to use the tasks just loaded
gulp.registry(hub);

gulp.task('default', gulp.series('responsive-images', 'copy-static-files', 'copy-js', 'copy-css', 'process-html'))

// removing optimize-images from the sequence as it causes netlify to timeout

// first retina-ready all non-icon images and copy to the staging directory *
// optimize all images in the staging directory (try to use cache) * (maybe do this first?)
// copy all assets that are not already in the staging directory (javascript and CSS files)
// process html files to minify and use retina images
// apply cache-busting to all non-icon images, javascript files, and css files and output them to the dist directory
// update html/css/xml files to use the new references (take them from the public folder and put them in the  dist directory)
// copy fonts from public to dist
// copy all icon images to the dist directory
// copy pdf and sitemap files from the public folder to the dist directory
