var install = require("gulp-install");
 
gulp.src(['./package.json'])
  .pipe(install());