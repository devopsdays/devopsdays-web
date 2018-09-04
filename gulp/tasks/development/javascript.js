var gulp = require('gulp'),
    concat = require('gulp-concat'),
    rename = require('gulp-rename'),
    uglify = require('gulp-uglify'),
    sourcemaps = require('gulp-sourcemaps');

    var scripts = [
      'bower_components/jquery/dist/jquery.js',
      'bower_components/tether/dist/js/tether.js',
      'bower_components/bootstrap/dist/js/bootstrap.js',
      'bower_components/jquery-oembed-all/jquery.oembed.js',
      'bower_components/bootstrap-sortable/Scripts/bootstrap-sortable.js',
      'bower_components/moment/moment.js',
      'bower_components/jssocials/dist/jssocials.js',
      'static/js/devopsdays.js'
    ]

gulp.task('js-concat', function(){
    return gulp.src(scripts)
        .pipe(sourcemaps.init())
        .pipe(concat('concat.js'))
        // .pipe(gulp.dest('dist'))
        .pipe(rename('devopsdays-min.js'))
        .pipe(uglify())
        .pipe(sourcemaps.write('./'))
        .pipe(gulp.dest('static/js'));
});
