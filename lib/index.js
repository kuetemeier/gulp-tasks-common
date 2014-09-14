
/*
 * https://github.com/jkuetemeier/gulp-tasks-common
 *
 * Copyright (c) 2014 Jörg Kütemeier
 * Licensed under the MIT license.
 */

(function() {
  var common, tasks, _;

  _ = require('lodash');

  common = {
    config: require('./config')
  };

  tasks = require('requiredir')('tasks');

  delete tasks.length;

  delete tasks.toArray;

  common.tasks = _.mapValues(tasks, function(value) {
    return value(common);
  });

  common.register_tasks = require('./register_tasks')(common);

  module.exports = common;

}).call(this);
