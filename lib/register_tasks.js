
/*
 * https://github.com/jkuetemeier/gulp-tasks-common
 *
 * Copyright (c) 2014 Jörg Kütemeier
 * Licensed under the MIT license.
 */

(function() {
  var _;

  _ = require('lodash');

  module.exports = function(common) {
    return function(gulp, config) {
      if (gulp === void 0) {
        throw new Error('gulp variable has to be defined');
      }
      config = config || {};
      _.defaults(config, common.config);
      return _.forIn(common.tasks, function(value, key) {
        var taskConfig;
        if (value.task) {
          return value.task(gulp, config[key]);
        } else {
          taskConfig = config[key];
          if (taskConfig.enabled) {
            gulp.task(key, function() {});
            return value.fn(gulp, taskConfig);
          }
        }
      });
    };
  };

}).call(this);
