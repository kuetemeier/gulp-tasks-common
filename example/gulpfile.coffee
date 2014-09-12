###
 * https://github.com/jkuetemeier/gulp-tasks-common
 *
 * Copyright (c) 2014 Jörg Kütemeier
 * Licensed under the MIT license.
###

# Load all required libraries.
gulp = require 'gulp'

common = require '..'

common.gulp_common(gulp)

gulp.task 'default', ['jshint']
