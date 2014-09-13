
/*
 * https://github.com/jkuetemeier/gulp-tasks-common
 *
 * Copyright (c) 2014 Jörg Kütemeier
 * Licensed under the MIT license.
 */
var defaultConfig, jshint, _;

jshint = require('gulp-jshint');

defaultConfig = require('../config/jshint');

_ = require('lodash');

module.exports = {
  run: function(gulp, taskConfig) {
    var res;
    taskConfig = _.extend(defaultConfig, taskConfig);
    res = null;
    if (taskConfig.enabled) {
      res = gulp.src(taskConfig.src).pipe(jshint(taskConfig.jshintrc_path)).pipe(jshint.reporter('default', {
        verbose: taskConfig.verbose
      }));
      if (taskConfig.fail) {
        res.pipe(jshint.reporter('fail'));
      }
    }
    return res;
  },
  gulpTask: function(gulp, taskConfig) {
    return gulp.task('jshint', function(cb) {
      return common.jshint.run(gulp, common.config.jshint);
    });
  }
};
