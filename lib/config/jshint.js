
/*
 * https://github.com/jkuetemeier/gulp-tasks-common
 *
 * Copyright (c) 2014 Jörg Kütemeier
 * Licensed under the MIT license.
 */
module.exports = {
  enabled: true,
  src: ["**/*.js", "!test/tool/**/*", "!node_modules/**/*"],
  verbose: true,
  fail: true,
  jshintrc_path: void 0
};
