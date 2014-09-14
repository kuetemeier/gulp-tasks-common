###
 * https://github.com/jkuetemeier/gulp-tasks-common
 *
 * Copyright (c) 2014 Jörg Kütemeier
 * Licensed under the MIT license.
###

module.exports = (module) ->
  delete require.cache[require.resolve(module)]
  return require module
