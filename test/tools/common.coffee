###
 * https://github.com/jkuetemeier/gulp-tasks-common
 *
 * Copyright (c) 2014 Jörg Kütemeier
 * Licensed under the MIT license.
###

# mockup of common for testing

common = {
  config: {

    taskEnabled : {
      enabled: true
    }

    taskDisabled : {
      enabled: false
    }

    taskOwnTask : {
      enabled: true
    }

    taskOwnTaskDisabled : {
      enabled: true
    }

  }

  tasks: {

    taskEnabled : {
      fn: -> "taskEnabled"
    }

    taskDisabled : {
      fn: -> "taskDisabled"
    }

    taskOwnTask : {
      fn: -> "taskOwnTask"
      task: (gulp, config) ->
        gulp.task "taskOwnTask", -> "taskOwnTask"
    }

    taskOwnTaskDisabled : {
      fn: -> "taskOwnTask"
      task: (gulp, config) ->
        gulp.task "taskOwnTask", -> "taskOwnTask"
    }


  }
}

common.register_tasks = require('../../lib/register_tasks')(common)

module.exports = common
