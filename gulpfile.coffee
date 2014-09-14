# Load all required libraries.
gulp = require 'gulp'
gutil = require 'gulp-util'
coffee = require 'gulp-coffee'
istanbul = require 'gulp-istanbul'
mocha = require 'gulp-mocha'
del = require 'del'
sourcemaps = require 'gulp-sourcemaps'

###
 use old style tasks for this, to ensure we can compile the tasks
 chicken egg problem ;-)
###

gulp.task 'clean', (cb) ->
  del(['./lib/**'], cb)

gulp.task 'coffee', ['clean'], ->
  # copy coffee script source files for debug
#  gulp.src './src/**/*.coffee'
#  .pipe(gulp.dest('./lib/'))

  gulp.src './src/**/*.coffee'
#    .pipe(sourcemaps.init())
#    .pipe coffee({bare: true , sourceMap: true}).on('error', gutil.log)
    .pipe coffee({bare: false}).on('error', gutil.log)
#    .pipe sourcemaps.write('.', { includeContent: false, sourceRoot: '/src' })
    .pipe gulp.dest './lib/'

gulp.task 'test', ['coffee'], ->

  gulp.src ['lib/**/*.js']
    .on 'finish', ->
      gulp.src(['test/**/*.spec.coffee','test/**/*.test.coffee'])
        .pipe mocha {
          reporter: 'spec',
          compilers: 'coffee:coffee-script/register'
        }

gulp.task 'covered', ['coffee'], ->
  gulp.src ['lib/**/*.js']
    .pipe(istanbul()) # Covering files
    .on 'finish', ->
      gulp.src(['test/**/*.spec.coffee','test/**/*.test.coffee'])
        .pipe mocha {
          reporter: 'dot',
          compilers: 'coffee:coffee-script/register'
        }
        .pipe istanbul.writeReports({
          dir: './coverage',
          reporters: [ 'lcov', 'json', 'text', 'text-summary', 'html' ],
          reportOpts: { dir: './coverage' },
        }) # Creating the reports after tests run

gulp.task 'default', ['clean', 'coffee']
