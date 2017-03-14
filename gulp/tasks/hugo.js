var gulp = require('gulp'),
    cp = require('child_process');

    /**
     * Build the Hugo Site
     */
    gulp.task('hugo', function(done) {

      return cp.spawn('hugo', ['-v', '--destination=' + 'public/', '--config=' + 'config.toml'], { stdio: 'inherit' })
      .on('close', done);
    });
