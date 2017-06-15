var gulp = require('gulp'),
    htmlmin = require('gulp-htmlmin'),
    imgRetina = require('gulp-img-retina'),
    runSequence = require('run-sequence');

gulp.task('process-html', function(callback) {
    runSequence('min-html', 'retina-html',
        callback
    )
})

gulp.task('copy-html', function(){
  return gulp.src('public/**/*.html')
  .pipe(gulp.dest('dist'))
})

var retinaOpts = {
    // Your options here.
};

gulp.task('min-html', function() {
    return gulp.src('public/**/*.html')
        .pipe(htmlmin({
            collapseWhitespace: true
        }))
        .pipe(gulp.dest('dist'));
})
// min-html was taking forever

gulp.task('retina-html', function() {
    return gulp.src(['dist/**/*.html'])
        .pipe(imgRetina(retinaOpts))
        .on('error', function(e) {
            console.log(e.message);
        })
        .pipe(gulp.dest('dist'));
})
