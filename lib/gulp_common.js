
/*
 * https://github.com/jkuetemeier/gulp-tasks-common
 *
 * Copyright (c) 2014 Jörg Kütemeier
 * Licensed under the MIT license.
 */
var _;

_ = require('lodash');

module.exports = function(common) {
  return function(gulp, config) {
    config = config || {};
    return config = _.extend(config, common.config);
  };
};
