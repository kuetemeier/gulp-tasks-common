###
 * https://github.com/jkuetemeier/gulp-tasks-common
 *
 * Copyright (c) 2014 Jörg Kütemeier
 * Licensed under the MIT license.
###

_ = require 'lodash'

module.exports = (common) ->
  (gulp, config) ->
    config = config || {}
    _.defaults config, common.config

    _.forIn common.tasks, (value, key) ->
      if common.tasks[key].tasks
        common.tasks[key].tasks gulp, config[key]
