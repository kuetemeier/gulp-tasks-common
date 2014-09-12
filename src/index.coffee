###
 * https://github.com/jkuetemeier/gulp-tasks-common
 *
 * Copyright (c) 2014 Jörg Kütemeier
 * Licensed under the MIT license.
###

# load tasks from `tasks` dir
common = require('requiredir')('tasks')

# prepare common gulp tasks
common.gulp_common = require('./gulp_common')(common)

module.exports = common
