var gulp = require('gulp'),
    imagemin = require('gulp-imagemin'),
    cache = require('gulp-cache');



gulp.task('optimize-local-content-images', function() {
    return gulp.src(['static/**/*.+(png|jpg|gif|svg)'])
        .pipe(cache(imagemin()))
        .pipe(gulp.dest('./static/'))
});

gulp.task('optimize-local-theme-images', function() {
    return gulp.src(['../static/**/*.+(png|jpg|gif|svg)','!public/favicon*', '!public/apple-icon*', '!public/android-icon*', '!public/ms-icon*'])
        .pipe(cache(imagemin()))
        .pipe(gulp.dest('../static'))
});


gulp.task('optimize-local-images', gulp.parallel('optimize-local-content-images', 'optimize-local-theme-images'));


