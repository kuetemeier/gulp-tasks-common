module.exports = (gulp, config) ->

  gulp.task("jshint", () ->
    gulp.src(["**/*.js","!.cortex","!test/tool/**/*","!node_modules/**/*"])
    .pipe(jshint(jshintrc_path))
    .pipe(jshint.reporter('default'))
    .pipe(jshint.reporter('fail'))
  )
