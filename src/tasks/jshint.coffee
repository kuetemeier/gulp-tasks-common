###
 * https://github.com/jkuetemeier/gulp-tasks-common
 *
 * Copyright (c) 2014 Jörg Kütemeier
 * Licensed under the MIT license.
###

jshint = require 'gulp-jshint'
defaultConfig = require '../config/jshint'
_ = require 'lodash'

module.exports = {

  fn: (gulp, taskConfig) ->
    taskConfig = _.extend defaultConfig, taskConfig
    res = null

    if taskConfig.enabled
      res = gulp.src(taskConfig.src)
      .pipe(jshint(taskConfig.jshintrc_path))
      .pipe(jshint.reporter('default', { verbose: taskConfig.verbose }))

      if taskConfig.fail
        res.pipe(jshint.reporter('fail'))

    return res

  task: (gulp, taskConfig) ->
    gulp.task 'jshint', (cb) ->
      common.jshint.run(gulp, common.config.jshint)

}
