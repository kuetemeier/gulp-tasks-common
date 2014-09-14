###
 * https://github.com/jkuetemeier/gulp-tasks-common
 *
 * Copyright (c) 2014 Jörg Kütemeier
 * Licensed under the MIT license.
###

jshint = require 'gulp-jshint'
config = require '../config'
_ = require 'lodash'

module.exports = (common) ->

  fn = (gulp, fnConfig) ->
    return true
    fnConfig ?= { }
    fnConfig = _.default fnConfig, config.jshint
    res = null

    if fnConfig.enabled
      res = gulp.src(fnConfig.src)
      .pipe(jshint(fnConfig.jshintrc_path))
      .pipe(jshint.reporter('default', { verbose: fnConfig.verbose }))

      if fnConfig.fail
        res.pipe(jshint.reporter('fail'))

    return res

  task = (gulp, taskConfig) ->
    taskConfig ?= { }
    _.defaults taskConfig, config.jshint

    if taskConfig.enabled
      gulp.task 'jshint', ->
        common.tasks.jshint.fn gulp, taskConfig

  {
    fn : fn
    task : task
  }
