###
 * https://github.com/jkuetemeier/gulp-tasks-common
 *
 * Copyright (c) 2014 Jörg Kütemeier
 * Licensed under the MIT license.
###

jshint = require 'gulp-jshint'
config = require '../config/jshint'
_ = require 'lodash'

module.exports = (gulp, _config) ->
  config = _.extend config, _config

  res = gulp.src(config.src)
  .pipe(jshint(config.jshintrc_path))
  .pipe(jshint.reporter('default', { verbose: config.verbose }))

  if config.fail
    res.pipe(jshint.reporter('fail'))

  return res
