var gulp = require('gulp'),
    imagemin = require('gulp-imagemin'),
    cache = require('gulp-cache');

    gulp.task('optimize-images', function(){
      return gulp.src(['public/**/*.+(png|jpg|gif|svg)','!public/favicon*', '!public/apple-icon*', '!public/android-icon*', '!public/ms-icon*'])
      .pipe(cache(imagemin()))
      .pipe(gulp.dest('public'))
    });

// this takes 11 minutes on Matt's MacBook
