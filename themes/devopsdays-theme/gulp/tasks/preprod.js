var gulp = require('gulp'),
  runSequence = require('run-sequence');

gulp.task('preprod', function (callback) {
  runSequence('responsive-images', 'copy-js', 'copy-css', 'process-html', 'revision', 'revision-update', 'copy-static-files',
    callback
  )
})

// first retina-ready all non-icon images and copy to the staging directory *
// optimize all images in the staging directory (try to use cache) * (maybe do this first?)
// copy all assets that are not already in the staging directory (javascript and CSS files)
// process html files to minify and use retina images
// apply cache-busting to all non-icon images, javascript files, and css files and output them to the dist directory
// update html/css/xml files to use the new references (take them from the public folder and put them in the  dist directory)
// copy fonts from public to dist
// copy all icon images to the dist directory
// copy pdf and sitemap files from the public folder to the dist directory
