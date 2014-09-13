###
 * https://github.com/jkuetemeier/gulp-tasks-common
 *
 * Copyright (c) 2014 Jörg Kütemeier
 * Licensed under the MIT license.
###

require 'coffee-errors'

chai = require 'chai'
sinon = require 'sinon'

expect = chai.expect
chai.use require 'sinon-chai'

gulp = require 'gulp'

# using compiled JavaScript file here to be sure module works
common = require('../..')

describe.skip 'tasks - jshint', ->
  it 'is defined', ->
    expect(common.tasks).to.be.defined
    expect(common.tasks.jshint).to.be.defined

  it 'has a config', ->
    expect(common.config).to.be.defined
    expect(common.config.jshint).to.be.defined

  it 'is enabeld by default', ->
    expect(common.config.jshint.enabeld).to.be.true

#    actual = common 'World'
#    expect(actual).to.eql 'Hello World'
