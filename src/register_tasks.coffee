###
 * https://github.com/jkuetemeier/gulp-tasks-common
 *
 * Copyright (c) 2014 Jörg Kütemeier
 * Licensed under the MIT license.
###

_ = require 'lodash'

module.exports = (common) ->
  (gulp, config) ->
    if gulp == undefined
      throw new Error 'gulp variable has to be defined'

    config = config || {}
    _.defaults config, common.config

    # try to register all tasks
    _.forIn common.tasks, (value, key) ->

      if value.task
        # if a 'task' property is defined, register this task
        value.task gulp, config[key]
      else
        # or create a default task (just call 'fn' property)
        taskConfig = config[key]
        if taskConfig.enabled
          gulp.task key, ->
          value.fn gulp, taskConfig

