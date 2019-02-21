var gulp = require('gulp'),
    htmlmin = require('gulp-htmlmin'),
    imgRetina = require('gulp-img-retina');
    // runSequence = require('run-sequence');




gulp.task('copy-html', function(){
  return gulp.src('public/**/*.html')
  .pipe(gulp.dest('dist'))
})

var retinaOpts = {
    suffix: {1: '', 2: '@2x'}
};

gulp.task('min-html', function() {
    return gulp.src('workspace/public/**/*.html')
        .pipe(htmlmin({
            collapseWhitespace: true
        }))
        .pipe(gulp.dest('dist'));
})
// min-html was taking forever

gulp.task('min-html-circle', function() {
    return gulp.src('public/**/*.html')
        .pipe(htmlmin({
            collapseWhitespace: true
        }))
        .pipe(gulp.dest('dist'));
})

gulp.task('retina-html', function() {
    return gulp.src(['dist/**/*.html',  '!dist/events/2015*/**', '!dist/events/2016*/**'])
        .pipe(imgRetina(retinaOpts))
        .on('error', function(e) {
            console.log(e.message);
        })
        .pipe(gulp.dest('dist'));
})

gulp.task('process-html', gulp.series('min-html', 'retina-html'));
