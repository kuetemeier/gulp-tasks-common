
/*
 * https://github.com/jkuetemeier/gulp-tasks-common
 *
 * Copyright (c) 2014 Jörg Kütemeier
 * Licensed under the MIT license.
 */
var common;

common = require('requiredir')('tasks');

common.gulp_common = require('./gulp_common')(common);

module.exports = common;
