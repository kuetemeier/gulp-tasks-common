
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
      config = config || {};
      _.defaults(config, common.config);
      return _.forIn(common.tasks, function(value, key) {
        if (common.tasks[key].tasks) {
          return common.tasks[key].tasks(gulp, config[key]);
        }
      });
    };
  };

}).call(this);
