###
 * https://github.com/jkuetemeier/gulp-tasks-common
 *
 * Copyright (c) 2014 Jörg Kütemeier
 * Licensed under the MIT license.
###

module.exports = (common) ->
  (gulp, config) ->
    config = config || {}

    gulp.task 'jshint', (cb) ->
      common.jshint(gulp)
