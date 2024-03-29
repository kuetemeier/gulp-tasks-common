###
 * https://github.com/jkuetemeier/gulp-tasks-common
 *
 * Copyright (c) 2014 Jörg Kütemeier
 * Licensed under the MIT license.
###


module.exports = {

  # this module is enabled by default
  enabled: true

  # array of sourcefiles to be jshint'ed
  src : [
    "**/*.js",            # jshint all js files in all subdirectories
    "!test/tool/**/*",    # but not under /test/tool/
    "!node_modules/**/*"  # und not under /node_modules
  ]

  # use a verbose reporter
  verbose : true

  # should the build fail if jshint finds a validation violation
  fail: true

  # optional path to a jshintrc file, default behavior: lookup
  jshintrc_path: undefined
}
