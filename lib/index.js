
/*
 * https://github.com/jkuetemeier/gulp-tasks-common
 *
 * Copyright (c) 2014 Jörg Kütemeier
 * Licensed under the MIT license.
 */
var common;

common = {
  tasks: require('requiredir')('tasks'),
  config: require('requiredir')('config')
};

({
  gulp_common: require('./gulp_common')(common)
});

module.exports = common;
