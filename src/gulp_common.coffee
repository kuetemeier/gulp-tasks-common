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
    config = _.extend config, common.config

