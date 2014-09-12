require_dir = require 'requiredir'
_ = require 'lodash'

module.exports = (gulp, _config) ->

  __config = _config || {}

  {
    config : _.merge(__config, require_dir('config'))

    jshint : require('./tasks/jshint')(gulp, __config)
  }
