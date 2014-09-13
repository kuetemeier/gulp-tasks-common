###
 * https://github.com/jkuetemeier/gulp-tasks-common
 *
 * Copyright (c) 2014 Jörg Kütemeier
 * Licensed under the MIT license.
###

common = {

  # load tasks from `tasks` dir
  tasks : require('requiredir')('tasks')

  # load config from 'config' dir
  config : require('requiredir')('config')

}

# prepare common gulp tasks
gulp_common : require('./gulp_common')(common)

module.exports = common
