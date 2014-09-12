# Load all required libraries.
gulp = require 'gulp'
gutil = require 'gulp-util'
coffee = require 'gulp-coffee'
istanbul = require 'gulp-istanbul'
mocha = require 'gulp-mocha'
del = require 'del'

###
 use old style tasks for this, to ensure we can compile the tasks
 chicken egg problem ;-)
###

gulp.task 'clean', (cb) ->
  del(['./lib/**'], cb)

gulp.task 'coffee', ->
  gulp.src './src/**/*.coffee'
    .pipe coffee({bare: true}).on('error', gutil.log)
    .pipe gulp.dest './lib/'

gulp.task 'test', ['coffee'], ->
  gulp.src ['lib/**/*.js']
    .pipe(istanbul()) # Covering files
    .on 'finish', ->
      gulp.src(['test/**/*.spec.coffee'])
        .pipe mocha reporter: 'spec', compilers: 'coffee:coffee-script/register'
        .pipe istanbul.writeReports() # Creating the reports after tests run

gulp.task 'default', ['coffee']
