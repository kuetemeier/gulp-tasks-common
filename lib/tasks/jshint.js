module.exports = function(gulp, config) {
  return gulp.task("jshint", function() {
    return gulp.src(["**/*.js", "!.cortex", "!test/tool/**/*", "!node_modules/**/*"]).pipe(jshint(jshintrc_path)).pipe(jshint.reporter('default')).pipe(jshint.reporter('fail'));
  });
};
