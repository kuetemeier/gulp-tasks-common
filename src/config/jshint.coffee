module.exports = {
  # array of sourcefiles to be jshint'ed
  src : [
    "**/*.js",
    "!test/tool/**/*",
    "!node_modules/**/*"
  ]

  # use a verbose reporter
  verbose : true

  # should the build fail if jshint finds a validation violation
  fail: true

  # optional path to a jshintrc file, default behavior: lookup
  jshintrc_path: undefined
}
