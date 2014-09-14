
/*
 * https://github.com/jkuetemeier/gulp-tasks-common
 *
 * Copyright (c) 2014 Jörg Kütemeier
 * Licensed under the MIT license.
 */

(function() {
  var config, jshint, _;

  jshint = require('gulp-jshint');

  config = require('../config');

  _ = require('lodash');

  module.exports = function(common) {
    var fn, task;
    fn = function(gulp, fnConfig) {
      var res;
      return true;
      if (fnConfig == null) {
        fnConfig = {};
      }
      fnConfig = _["default"](fnConfig, config.jshint);
      res = null;
      if (fnConfig.enabled) {
        res = gulp.src(fnConfig.src).pipe(jshint(fnConfig.jshintrc_path)).pipe(jshint.reporter('default', {
          verbose: fnConfig.verbose
        }));
        if (fnConfig.fail) {
          res.pipe(jshint.reporter('fail'));
        }
      }
      return res;
    };
    task = function(gulp, taskConfig) {
      if (taskConfig == null) {
        taskConfig = {};
      }
      _.defaults(taskConfig, config.jshint);
      if (taskConfig.enabled) {
        return gulp.task('jshint', function() {
          return common.tasks.jshint.fn(gulp, taskConfig);
        });
      }
    };
    return {
      fn: fn,
      task: task
    };
  };

}).call(this);
