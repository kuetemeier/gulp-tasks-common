module.exports = {
  src : [
    "**/*.js",
    "!test/tool/**/*",
    "!node_modules/**/*"
  ]
  verbose : true

  fail: true

  jshintrc_path: undefined
}
