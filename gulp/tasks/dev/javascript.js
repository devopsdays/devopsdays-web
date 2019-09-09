var gulp = require('gulp'),
    concat = require('gulp-concat'),
    rename = require('gulp-rename'),
    uglify = require('gulp-uglify');
    sourcemaps = require('gulp-sourcemaps');

var scripts = [
    'node_modules/jquery/dist/jquery.js',
    'node_modules/bootstrap/dist/js/bootstrap.js',
    'themes/devopsdays-theme/static/components/jquery-oembed-all/jquery.oembed.js',
    'node_modules/jssocials/dist/jssocials.js',
    'themes/devopsdays-theme/static/js/devopsdays.js'
]

gulp.task('js-concat', function(){
    return gulp.src(scripts)
        .pipe(sourcemaps.init())
        .pipe(concat('concat.js'))
        // .pipe(gulp.dest('dist'))
        .pipe(rename('devopsdays-min.js'))
        .pipe(uglify({ keep_fnames: true }))
        .pipe(sourcemaps.write('./'))
        .pipe(gulp.dest('themes/devopsdays-theme/static/js'));
});