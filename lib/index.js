var require_dir, _;

require_dir = require('requiredir');

_ = require('lodash');

module.exports = function(gulp, _config) {
  var __config;
  __config = _config || {};
  return {
    config: _.merge(__config, require_dir('config')),
    jshint: require('./tasks/jshint')(gulp, __config)
  };
};
