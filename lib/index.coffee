###
 * https://github.com/jkuetemeier/gulp-tasks-common
 *
 * Copyright (c) 2014 Jörg Kütemeier
 * Licensed under the MIT license.
###

_ = require 'lodash'

common = {

  # load config from 'config' dir
  config : require('./config')
}

# load tasks from `tasks` dir
tasks = require('requiredir')('tasks')

# hack, don't know where length and toArray are coming from...
delete tasks.length
delete tasks.toArray

common.tasks = _.mapValues tasks, (value) ->
  value(common)

# prepare common gulp tasks
common.register_tasks = require('./register_tasks')(common)

module.exports = common
