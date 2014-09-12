
/*
 * https://github.com/jkuetemeier/gulp-tasks-common
 *
 * Copyright (c) 2014 Jörg Kütemeier
 * Licensed under the MIT license.
 */
module.exports = function(common) {
  return function(gulp, config) {
    config = config || {};
    return gulp.task('jshint', function(cb) {
      return common.jshint(gulp);
    });
  };
};
